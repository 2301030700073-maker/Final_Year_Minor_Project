package b.a;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f210a;

    public b(g gVar) {
        this.f210a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            super/*android.app.Activity*/.onBackPressed();
        } catch (IllegalStateException e) {
            if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        }
    }
}
