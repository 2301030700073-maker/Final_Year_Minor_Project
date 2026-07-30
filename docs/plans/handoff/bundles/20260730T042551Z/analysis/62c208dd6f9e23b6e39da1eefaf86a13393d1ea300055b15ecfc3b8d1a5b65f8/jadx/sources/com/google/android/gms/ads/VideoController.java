package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzeb;
import com.google.android.gms.ads.internal.client.zzfz;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.annotation.KeepForSdk;

/* loaded from: classes.dex */
public final class VideoController {

    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;

    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;

    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;

    /* renamed from: do, reason: not valid java name */
    public VideoLifecycleCallbacks f9531do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzeb f9532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9533do = new Object();

    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    @KeepForSdk
    public int getPlaybackState() {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return 0;
            }
            try {
                return zzebVar.zzh();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    public VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.f9533do) {
            videoLifecycleCallbacks = this.f9531do;
        }
        return videoLifecycleCallbacks;
    }

    public boolean hasVideoContent() {
        boolean z;
        synchronized (this.f9533do) {
            z = this.f9532do != null;
        }
        return z;
    }

    public boolean isClickToExpandEnabled() {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return false;
            }
            try {
                return zzebVar.zzo();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public boolean isCustomControlsEnabled() {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return false;
            }
            try {
                return zzebVar.zzp();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public boolean isMuted() {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return true;
            }
            try {
                return zzebVar.zzq();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public void mute(boolean z) {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return;
            }
            try {
                zzebVar.zzj(z);
            } catch (RemoteException e) {
                zzo.zzh("Unable to call mute on video controller.", e);
            }
        }
    }

    public void pause() {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return;
            }
            try {
                zzebVar.zzk();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call pause on video controller.", e);
            }
        }
    }

    public void play() {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return;
            }
            try {
                zzebVar.zzl();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call play on video controller.", e);
            }
        }
    }

    public void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzfz zzfzVar;
        synchronized (this.f9533do) {
            this.f9531do = videoLifecycleCallbacks;
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return;
            }
            if (videoLifecycleCallbacks == null) {
                zzfzVar = null;
            } else {
                try {
                    zzfzVar = new zzfz(videoLifecycleCallbacks);
                } catch (RemoteException e) {
                    zzo.zzh("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
            zzebVar.zzm(zzfzVar);
        }
    }

    public void stop() {
        synchronized (this.f9533do) {
            zzeb zzebVar = this.f9532do;
            if (zzebVar == null) {
                return;
            }
            try {
                zzebVar.zzn();
            } catch (RemoteException e) {
                zzo.zzh("Unable to call stop on video controller.", e);
            }
        }
    }

    public final zzeb zza() {
        zzeb zzebVar;
        synchronized (this.f9533do) {
            zzebVar = this.f9532do;
        }
        return zzebVar;
    }

    public final void zzb(zzeb zzebVar) {
        synchronized (this.f9533do) {
            this.f9532do = zzebVar;
            VideoLifecycleCallbacks videoLifecycleCallbacks = this.f9531do;
            if (videoLifecycleCallbacks != null) {
                setVideoLifecycleCallbacks(videoLifecycleCallbacks);
            }
        }
    }
}
