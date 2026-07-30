package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;

/* loaded from: classes.dex */
public final class M1 implements CustomEventBannerListener {

    /* renamed from: do, reason: not valid java name */
    public Object f2077do;

    /* renamed from: if, reason: not valid java name */
    public final Object f2078if;

    public /* synthetic */ M1(Object obj, Object obj2) {
        this.f2077do = obj;
        this.f2078if = obj2;
    }

    /* renamed from: do, reason: not valid java name */
    public static M1 m1374do(Context context) {
        FileChannel fileChannel;
        FileLock fileLock;
        try {
            fileChannel = new RandomAccessFile(new File(context.getFilesDir(), "generatefid.lock"), "rw").getChannel();
            try {
                fileLock = fileChannel.lock();
            } catch (IOException | Error | OverlappingFileLockException unused) {
                fileLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException unused2) {
            fileChannel = null;
            fileLock = null;
        }
        try {
            return new M1(fileChannel, fileLock);
        } catch (IOException | Error | OverlappingFileLockException unused3) {
            if (fileLock != null) {
                try {
                    fileLock.release();
                } catch (IOException unused4) {
                }
            }
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException unused5) {
                }
            }
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1375for(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((TextView) this.f2077do).getContext().obtainStyledAttributes(attributeSet, O4.f2575throw, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            ((C0296Jf) this.f2078if).f1660do.mo1044new(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final InputFilter[] m1376if(InputFilter[] inputFilterArr) {
        return ((C0296Jf) this.f2078if).f1660do.mo1041do(inputFilterArr);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1377new() {
        try {
            ((FileLock) this.f2078if).release();
            ((FileChannel) this.f2077do).close();
        } catch (IOException unused) {
        }
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClicked() {
        zzo.zze("Custom event adapter called onAdClicked.");
        ((MediationBannerListener) this.f2078if).onAdClicked((CustomEventAdapter) this.f2077do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdClosed() {
        zzo.zze("Custom event adapter called onAdClosed.");
        ((MediationBannerListener) this.f2078if).onAdClosed((CustomEventAdapter) this.f2077do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(int i) {
        zzo.zze("Custom event adapter called onAdFailedToLoad.");
        ((MediationBannerListener) this.f2078if).onAdFailedToLoad((CustomEventAdapter) this.f2077do, i);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdLeftApplication() {
        zzo.zze("Custom event adapter called onAdLeftApplication.");
        ((MediationBannerListener) this.f2078if).onAdLeftApplication((CustomEventAdapter) this.f2077do);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
    public final void onAdLoaded(View view) {
        zzo.zze("Custom event adapter called onAdLoaded.");
        Object obj = this.f2077do;
        ((CustomEventAdapter) obj).f9945do = view;
        ((MediationBannerListener) this.f2078if).onAdLoaded((CustomEventAdapter) obj);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdOpened() {
        zzo.zze("Custom event adapter called onAdOpened.");
        ((MediationBannerListener) this.f2078if).onAdOpened((CustomEventAdapter) this.f2077do);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1378try(boolean z) {
        ((C0296Jf) this.f2078if).f1660do.mo1042for(z);
    }

    public /* synthetic */ M1(LU lu) {
        this.f2078if = lu;
    }

    public /* synthetic */ M1(TextView textView) {
        this.f2077do = textView;
        this.f2078if = new C0296Jf(textView);
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
    public final void onAdFailedToLoad(AdError adError) {
        zzo.zze("Custom event adapter called onAdFailedToLoad.");
        ((MediationBannerListener) this.f2078if).onAdFailedToLoad((CustomEventAdapter) this.f2077do, adError);
    }
}
