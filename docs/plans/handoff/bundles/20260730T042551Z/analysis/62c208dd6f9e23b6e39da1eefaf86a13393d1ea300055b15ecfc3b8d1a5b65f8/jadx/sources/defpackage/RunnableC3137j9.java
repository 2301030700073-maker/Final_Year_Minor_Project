package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Trace;
import android.view.View;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.emoji2.text.Celse;
import androidx.emoji2.text.Cgoto;
import androidx.emoji2.text.Cnew;
import com.facebook.appevents.AnalyticsUserIDStore;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.material.bottomappbar.BottomAppBar;
import java.nio.MappedByteBuffer;

/* renamed from: j9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3137j9 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f13643do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13644for;

    public /* synthetic */ RunnableC3137j9(Object obj, int i) {
        this.f13644for = i;
        this.f13643do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 2;
        switch (this.f13644for) {
            case 0:
                DialogC3196k9.m7216try((DialogC3196k9) this.f13643do);
                return;
            case 1:
                ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) this.f13643do;
                int i2 = ContentLoadingProgressBar.f6531for;
                contentLoadingProgressBar.getClass();
                System.currentTimeMillis();
                contentLoadingProgressBar.setVisibility(0);
                return;
            case 2:
                Celse.Cif cif = (Celse.Cif) this.f13643do;
                synchronized (cif.f6764do) {
                    if (cif.f6762do == null) {
                        return;
                    }
                    try {
                        C3582qj m4100new = cif.m4100new();
                        int i3 = m4100new.f15151for;
                        if (i3 == 2) {
                            synchronized (cif.f6764do) {
                            }
                        }
                        if (i3 != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + i3 + ")");
                        }
                        try {
                            int i4 = C2626dI.f12469do;
                            Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                            Celse.Cdo cdo = cif.f6761do;
                            Context context = cif.f6759do;
                            cdo.getClass();
                            Typeface mo1409if = LI.f1942do.mo1409if(context, new C3582qj[]{m4100new}, 0);
                            MappedByteBuffer m2239try = TI.m2239try(cif.f6759do, m4100new.f15149do);
                            if (m2239try == null || mo1409if == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            try {
                                Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                Cgoto cgoto = new Cgoto(mo1409if, C2717et.m6592do(m2239try));
                                Trace.endSection();
                                Trace.endSection();
                                synchronized (cif.f6764do) {
                                    Cnew.Cgoto cgoto2 = cif.f6762do;
                                    if (cgoto2 != null) {
                                        cgoto2.mo4102if(cgoto);
                                    }
                                }
                                cif.m4099if();
                                return;
                            } finally {
                                int i5 = C2626dI.f12469do;
                                Trace.endSection();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (Throwable th2) {
                        synchronized (cif.f6764do) {
                            Cnew.Cgoto cgoto3 = cif.f6762do;
                            if (cgoto3 != null) {
                                cgoto3.mo4101do(th2);
                            }
                            cif.m4099if();
                            return;
                        }
                    }
                }
            case 3:
                AnalyticsUserIDStore.m5300setUserID$lambda1((String) this.f13643do);
                return;
            case 4:
                View view = (View) this.f13643do;
                int i6 = BottomAppBar.f10553switch;
                view.requestLayout();
                return;
            default:
                Context context2 = (Context) this.f13643do;
                Handler handler = C0301Jk.f1675do;
                try {
                    MobileAds.initialize(context2, new OnInitializationCompleteListener() { // from class: Fk
                        @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
                        public final void onInitializationComplete(InitializationStatus initializationStatus) {
                            C0301Jk.m1057try(new RunnableC2617d9(initializationStatus, 4));
                        }
                    });
                    return;
                } catch (Throwable th3) {
                    try {
                        C0766bi.m4854do().m4855for(th3);
                    } catch (Exception unused) {
                    }
                    C0301Jk.m1057try(new RunnableC3880vn(i));
                    return;
                }
        }
    }
}
