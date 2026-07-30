package androidx.emoji2.text;

import androidx.emoji2.text.Cnew;
import java.util.concurrent.ThreadPoolExecutor;

/* renamed from: androidx.emoji2.text.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry extends Cnew.Cgoto {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cnew.Cgoto f6794do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ThreadPoolExecutor f6795do;

    public Ctry(Cnew.Cgoto cgoto, ThreadPoolExecutor threadPoolExecutor) {
        this.f6794do = cgoto;
        this.f6795do = threadPoolExecutor;
    }

    @Override // androidx.emoji2.text.Cnew.Cgoto
    /* renamed from: do */
    public final void mo4101do(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f6795do;
        try {
            this.f6794do.mo4101do(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // androidx.emoji2.text.Cnew.Cgoto
    /* renamed from: if */
    public final void mo4102if(Cgoto cgoto) {
        ThreadPoolExecutor threadPoolExecutor = this.f6795do;
        try {
            this.f6794do.mo4102if(cgoto);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
