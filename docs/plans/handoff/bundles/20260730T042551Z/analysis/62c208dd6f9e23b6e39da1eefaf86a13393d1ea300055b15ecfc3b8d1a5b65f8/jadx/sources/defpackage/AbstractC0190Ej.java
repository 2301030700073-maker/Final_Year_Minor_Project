package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import androidx.fragment.app.FragmentActivity;
import java.io.PrintWriter;

/* renamed from: Ej, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0190Ej<E> extends AbstractC0146Cj {

    /* renamed from: do, reason: not valid java name */
    public final C0212Fj f879do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Activity f880do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f881do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f882do;

    public AbstractC0190Ej(FragmentActivity fragmentActivity) {
        Handler handler = new Handler();
        this.f879do = new C0212Fj();
        this.f880do = fragmentActivity;
        if (fragmentActivity == null) {
            throw new NullPointerException("context == null");
        }
        this.f881do = fragmentActivity;
        this.f882do = handler;
    }

    /* renamed from: break, reason: not valid java name */
    public abstract boolean mo497break(String str);

    /* renamed from: case, reason: not valid java name */
    public abstract void mo498case(PrintWriter printWriter, String[] strArr);

    /* renamed from: catch, reason: not valid java name */
    public abstract void mo499catch();

    /* renamed from: else, reason: not valid java name */
    public abstract FragmentActivity mo500else();

    /* renamed from: this, reason: not valid java name */
    public abstract LayoutInflater mo501this();
}
