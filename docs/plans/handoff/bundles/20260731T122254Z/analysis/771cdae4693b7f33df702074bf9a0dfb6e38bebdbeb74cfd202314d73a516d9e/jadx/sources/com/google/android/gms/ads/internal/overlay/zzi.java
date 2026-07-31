package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.google.android.gms.ads.internal.zzo;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzhl;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@zzgd
/* loaded from: classes.dex */
public class zzi extends SurfaceView implements AudioManager.OnAudioFocusChangeListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, SurfaceHolder.Callback {
    private static final Map<Integer, String> zzzU = new HashMap();
    private int zzAa;
    private int zzAb;
    private int zzAc;
    private int zzAd;
    private int zzAe;
    private float zzAf;
    private boolean zzAg;
    private boolean zzAh;
    private int zzAi;
    private zzg zzAj;
    private int zzzV;
    private int zzzW;
    private SurfaceHolder zzzX;
    private MediaPlayer zzzY;
    private Uri zzzZ;

    static {
        zzzU.put(-1004, "MEDIA_ERROR_IO");
        zzzU.put(-1007, "MEDIA_ERROR_MALFORMED");
        zzzU.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        zzzU.put(-110, "MEDIA_ERROR_TIMED_OUT");
        zzzU.put(100, "MEDIA_ERROR_SERVER_DIED");
        zzzU.put(1, "MEDIA_ERROR_UNKNOWN");
        zzzU.put(1, "MEDIA_INFO_UNKNOWN");
        zzzU.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        zzzU.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        zzzU.put(701, "MEDIA_INFO_BUFFERING_START");
        zzzU.put(702, "MEDIA_INFO_BUFFERING_END");
        zzzU.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        zzzU.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        zzzU.put(802, "MEDIA_INFO_METADATA_UPDATE");
        zzzU.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        zzzU.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzi(Context context) {
        super(context);
        this.zzzV = 0;
        this.zzzW = 0;
        this.zzAf = 1.0f;
        getHolder().addCallback(this);
        if (Build.VERSION.SDK_INT < 11) {
            getHolder().setType(3);
        }
    }

    private void zzb(float f) {
        if (this.zzzY == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaC("AdVideoView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                this.zzzY.setVolume(f, f);
            } catch (IllegalStateException e) {
            }
        }
    }

    private void zzeP() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView init MediaPlayer");
        if (this.zzzZ == null || this.zzzX == null) {
            return;
        }
        zzv(false);
        try {
            this.zzzY = new MediaPlayer();
            this.zzzY.setOnBufferingUpdateListener(this);
            this.zzzY.setOnCompletionListener(this);
            this.zzzY.setOnErrorListener(this);
            this.zzzY.setOnInfoListener(this);
            this.zzzY.setOnPreparedListener(this);
            this.zzzY.setOnVideoSizeChangedListener(this);
            this.zzAe = 0;
            this.zzzY.setDataSource(getContext(), this.zzzZ);
            this.zzzY.setDisplay(this.zzzX);
            this.zzzY.setAudioStreamType(3);
            this.zzzY.setScreenOnWhilePlaying(true);
            this.zzzY.prepareAsync();
            this.zzzV = 1;
        } catch (IOException | IllegalArgumentException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Failed to initialize MediaPlayer at " + this.zzzZ, e);
            onError(this.zzzY, 1, 0);
        }
    }

    private void zzeQ() {
        if (!zzeT() || this.zzzW == 3) {
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView nudging MediaPlayer");
        this.zzzY.start();
        int currentPosition = this.zzzY.getCurrentPosition();
        long currentTimeMillis = zzo.zzbz().currentTimeMillis();
        while (zzeT() && this.zzzY.getCurrentPosition() == currentPosition && zzo.zzbz().currentTimeMillis() - currentTimeMillis <= 250) {
        }
        this.zzzY.pause();
    }

    private void zzeR() {
        AudioManager zzeX = zzeX();
        if (zzeX == null || this.zzAh) {
            return;
        }
        if (zzeX.requestAudioFocus(this, 3, 2) == 1) {
            zzeU();
        } else {
            com.google.android.gms.ads.internal.util.client.zzb.zzaC("AdVideoView audio focus request failed");
        }
    }

    private void zzeS() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView abandon audio focus");
        AudioManager zzeX = zzeX();
        if (zzeX == null || !this.zzAh) {
            return;
        }
        if (zzeX.abandonAudioFocus(this) == 1) {
            this.zzAh = false;
        } else {
            com.google.android.gms.ads.internal.util.client.zzb.zzaC("AdVideoView abandon audio focus failed");
        }
    }

    private boolean zzeT() {
        return (this.zzzY == null || this.zzzV == -1 || this.zzzV == 0 || this.zzzV == 1) ? false : true;
    }

    private void zzeU() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView audio focus gained");
        this.zzAh = true;
        zzeW();
    }

    private void zzeV() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView audio focus lost");
        this.zzAh = false;
        zzeW();
    }

    private void zzeW() {
        zzb((this.zzAg || !this.zzAh) ? 0.0f : this.zzAf);
    }

    private AudioManager zzeX() {
        return (AudioManager) getContext().getSystemService("audio");
    }

    private void zzv(boolean z) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView release");
        if (this.zzzY != null) {
            this.zzzY.reset();
            this.zzzY.release();
            this.zzzY = null;
            this.zzzV = 0;
            if (z) {
                this.zzzW = 0;
            }
            zzeS();
        }
    }

    public int getCurrentPosition() {
        if (zzeT()) {
            return this.zzzY.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i > 0) {
            zzeU();
        } else if (i < 0) {
            zzeV();
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzAe = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView completion");
        this.zzzV = 5;
        this.zzzW = 5;
        zzhl.zzGk.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi.2
            @Override // java.lang.Runnable
            public void run() {
                if (zzi.this.zzAj != null) {
                    zzi.this.zzAj.zzeF();
                }
            }
        });
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        final String str = zzzU.get(Integer.valueOf(i));
        final String str2 = zzzU.get(Integer.valueOf(i2));
        com.google.android.gms.ads.internal.util.client.zzb.zzaC("AdVideoView MediaPlayer error: " + str + ":" + str2);
        this.zzzV = -1;
        this.zzzW = -1;
        zzhl.zzGk.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi.3
            @Override // java.lang.Runnable
            public void run() {
                if (zzi.this.zzAj != null) {
                    zzi.this.zzAj.zzg(str, str2);
                }
            }
        });
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView MediaPlayer info: " + zzzU.get(Integer.valueOf(i)) + ":" + zzzU.get(Integer.valueOf(i2)));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
    
        if ((r7.zzAa * r3) > (r7.zzAb * r1)) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
    
        r0 = (r7.zzAb * r1) / r7.zzAa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r0 > r3) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
    
        if (r2 > r1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0084, code lost:
    
        if (r2 > r1) goto L14;
     */
    @Override // android.view.SurfaceView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            int r0 = r7.zzAa
            int r0 = getDefaultSize(r0, r8)
            int r1 = r7.zzAb
            int r1 = getDefaultSize(r1, r9)
            int r2 = r7.zzAa
            if (r2 <= 0) goto L87
            int r2 = r7.zzAb
            if (r2 <= 0) goto L87
            int r0 = android.view.View.MeasureSpec.getMode(r8)
            int r1 = android.view.View.MeasureSpec.getSize(r8)
            int r2 = android.view.View.MeasureSpec.getMode(r9)
            int r3 = android.view.View.MeasureSpec.getSize(r9)
            r4 = 1073741824(0x40000000, float:2.0)
            if (r0 != r4) goto L4e
            if (r2 != r4) goto L4e
            int r0 = r7.zzAa
            int r0 = r0 * r3
            int r2 = r7.zzAb
            int r2 = r2 * r1
            if (r0 >= r2) goto L3c
            int r0 = r7.zzAa
            int r0 = r0 * r3
            int r1 = r7.zzAb
            int r0 = r0 / r1
            goto L88
        L3c:
            int r0 = r7.zzAa
            int r0 = r0 * r3
            int r2 = r7.zzAb
            int r2 = r2 * r1
            if (r0 <= r2) goto L89
        L46:
            int r0 = r7.zzAb
            int r0 = r0 * r1
            int r2 = r7.zzAa
            int r0 = r0 / r2
            goto L5e
        L4e:
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r4) goto L60
            int r0 = r7.zzAb
            int r0 = r0 * r1
            int r4 = r7.zzAa
            int r0 = r0 / r4
            if (r2 != r5) goto L5e
            if (r0 <= r3) goto L5e
            goto L89
        L5e:
            r3 = r0
            goto L89
        L60:
            if (r2 != r4) goto L70
            int r2 = r7.zzAa
            int r2 = r2 * r3
            int r4 = r7.zzAb
            int r2 = r2 / r4
            if (r0 != r5) goto L6e
            if (r2 <= r1) goto L6e
            goto L89
        L6e:
            r1 = r2
            goto L89
        L70:
            int r4 = r7.zzAa
            int r6 = r7.zzAb
            if (r2 != r5) goto L80
            if (r6 <= r3) goto L80
            int r2 = r7.zzAa
            int r2 = r2 * r3
            int r4 = r7.zzAb
            int r2 = r2 / r4
            goto L82
        L80:
            r2 = r4
            r3 = r6
        L82:
            if (r0 != r5) goto L6e
            if (r2 <= r1) goto L6e
            goto L46
        L87:
            r3 = r1
        L88:
            r1 = r0
        L89:
            r7.setMeasuredDimension(r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzi.onMeasure(int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006c, code lost:
    
        if (r4.zzzW == 3) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0073, code lost:
    
        play();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
    
        if (r4.zzzW == 3) goto L18;
     */
    @Override // android.media.MediaPlayer.OnPreparedListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPrepared(final android.media.MediaPlayer r5) {
        /*
            r4 = this;
            java.lang.String r0 = "AdVideoView prepared"
            com.google.android.gms.ads.internal.util.client.zzb.zzaB(r0)
            r0 = 2
            r4.zzzV = r0
            android.os.Handler r0 = com.google.android.gms.internal.zzhl.zzGk
            com.google.android.gms.ads.internal.overlay.zzi$1 r1 = new com.google.android.gms.ads.internal.overlay.zzi$1
            r1.<init>()
            r0.post(r1)
            int r0 = r5.getVideoWidth()
            r4.zzAa = r0
            int r0 = r5.getVideoHeight()
            r4.zzAb = r0
            int r0 = r4.zzAi
            if (r0 == 0) goto L27
            int r0 = r4.zzAi
            r4.seekTo(r0)
        L27:
            r4.zzeQ()
            int r0 = r4.zzAa
            r1 = 3
            if (r0 == 0) goto L6f
            int r0 = r4.zzAb
            if (r0 == 0) goto L6f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "AdVideoView stream dimensions: "
            r0.append(r2)
            int r2 = r4.zzAa
            r0.append(r2)
            java.lang.String r2 = " x "
            r0.append(r2)
            int r2 = r4.zzAb
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            com.google.android.gms.ads.internal.util.client.zzb.zzaA(r0)
            android.view.SurfaceHolder r0 = r4.getHolder()
            int r2 = r4.zzAa
            int r3 = r4.zzAb
            r0.setFixedSize(r2, r3)
            int r0 = r4.zzAc
            int r2 = r4.zzAa
            if (r0 != r2) goto L76
            int r0 = r4.zzAd
            int r2 = r4.zzAb
            if (r0 != r2) goto L76
            int r0 = r4.zzzW
            if (r0 != r1) goto L76
            goto L73
        L6f:
            int r0 = r4.zzzW
            if (r0 != r1) goto L76
        L73:
            r4.play()
        L76:
            r4.zzeR()
            r4.zzeW()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzi.onPrepared(android.media.MediaPlayer):void");
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView size changed: " + i + " x " + i2);
        this.zzAa = mediaPlayer.getVideoWidth();
        this.zzAb = mediaPlayer.getVideoHeight();
        if (this.zzAa == 0 || this.zzAb == 0) {
            return;
        }
        getHolder().setFixedSize(this.zzAa, this.zzAb);
        requestLayout();
    }

    public void pause() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView pause");
        if (zzeT() && this.zzzY.isPlaying()) {
            this.zzzY.pause();
            this.zzzV = 4;
            zzhl.zzGk.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi.7
                @Override // java.lang.Runnable
                public void run() {
                    if (zzi.this.zzAj != null) {
                        zzi.this.zzAj.onPaused();
                    }
                }
            });
        }
        this.zzzW = 4;
    }

    public void play() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView play");
        if (zzeT()) {
            this.zzzY.start();
            this.zzzV = 3;
            zzhl.zzGk.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi.6
                @Override // java.lang.Runnable
                public void run() {
                    if (zzi.this.zzAj != null) {
                        zzi.this.zzAj.zzeE();
                    }
                }
            });
        }
        this.zzzW = 3;
    }

    public void seekTo(int i) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView seek " + i);
        if (!zzeT()) {
            this.zzAi = i;
        } else {
            this.zzzY.seekTo(i);
            this.zzAi = 0;
        }
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        this.zzzZ = uri;
        this.zzAi = 0;
        zzeP();
        requestLayout();
        invalidate();
    }

    public void stop() {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView stop");
        if (this.zzzY != null) {
            this.zzzY.stop();
            this.zzzY.release();
            this.zzzY = null;
            this.zzzV = 0;
            this.zzzW = 0;
            zzeS();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView surface changed");
        this.zzAc = i2;
        this.zzAd = i3;
        boolean z = false;
        boolean z2 = this.zzzW == 3;
        if (this.zzAa == i2 && this.zzAb == i3) {
            z = true;
        }
        if (this.zzzY != null && z2 && z) {
            if (this.zzAi != 0) {
                seekTo(this.zzAi);
            }
            play();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView surface created");
        this.zzzX = surfaceHolder;
        zzeP();
        zzhl.zzGk.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi.4
            @Override // java.lang.Runnable
            public void run() {
                if (zzi.this.zzAj != null) {
                    zzi.this.zzAj.zzeD();
                }
            }
        });
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        com.google.android.gms.ads.internal.util.client.zzb.zzaB("AdVideoView surface destroyed");
        if (this.zzzY != null && this.zzAi == 0) {
            this.zzAi = this.zzzY.getCurrentPosition();
        }
        this.zzzX = null;
        zzhl.zzGk.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzi.5
            @Override // java.lang.Runnable
            public void run() {
                if (zzi.this.zzAj != null) {
                    zzi.this.zzAj.onPaused();
                    zzi.this.zzAj.zzeG();
                }
            }
        });
        zzv(true);
    }

    @Override // android.view.View
    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }

    public void zza(float f) {
        this.zzAf = f;
        zzeW();
    }

    public void zza(zzg zzgVar) {
        this.zzAj = zzgVar;
    }

    public void zzeI() {
        this.zzAg = true;
        zzeW();
    }

    public void zzeJ() {
        this.zzAg = false;
        zzeW();
    }
}
