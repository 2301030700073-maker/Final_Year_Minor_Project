package defpackage;

import androidx.emoji2.text.Cdo;
import androidx.emoji2.text.Celse;
import androidx.emoji2.text.Cnew;
import androidx.emoji2.text.Ctry;
import androidx.emoji2.text.EmojiCompatInitializer;
import com.google.android.gms.common.util.BiConsumer;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Pattern;

/* renamed from: Bf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0120Bf implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f253do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f254for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f255for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f256if;

    public /* synthetic */ RunnableC0120Bf(Object obj, Object obj2, Object obj3, int i) {
        this.f254for = i;
        this.f253do = obj;
        this.f256if = obj2;
        this.f255for = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f254for) {
            case 0:
                EmojiCompatInitializer.Cif cif = (EmojiCompatInitializer.Cif) this.f253do;
                Cnew.Cgoto cgoto = (Cnew.Cgoto) this.f256if;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f255for;
                cif.getClass();
                try {
                    Celse m4096do = Cdo.m4096do(cif.f6748do);
                    if (m4096do == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    Celse.Cif cif2 = (Celse.Cif) ((Cnew.Cfor) m4096do).f6792do;
                    synchronized (cif2.f6764do) {
                        cif2.f6765do = threadPoolExecutor;
                    }
                    ((Cnew.Cfor) m4096do).f6792do.mo4090do(new Ctry(cgoto, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    cgoto.mo4101do(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            default:
                BiConsumer biConsumer = (BiConsumer) this.f253do;
                String str = (String) this.f256if;
                E9 e9 = (E9) this.f255for;
                Pattern pattern = H9.f1300do;
                biConsumer.accept(str, e9);
                return;
        }
    }
}
