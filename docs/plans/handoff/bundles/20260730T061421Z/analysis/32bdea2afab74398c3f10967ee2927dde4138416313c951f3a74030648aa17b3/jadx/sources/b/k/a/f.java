package b.k.a;

import android.util.Log;
import b.j.B;
import b.j.E;
import b.j.G;
import b.j.H;
import b.j.j;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class f extends a {

    /* renamed from: a, reason: collision with root package name */
    public final j f1016a;

    /* renamed from: b, reason: collision with root package name */
    public final e f1017b;

    public f(j jVar, H h) {
        this.f1016a = jVar;
        Object obj = e.f1014d;
        String canonicalName = e.class.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        String e = c.a.c.a.a.e("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
        B b2 = (B) h.f985a.get(e);
        if (!e.class.isInstance(b2)) {
            b2 = obj instanceof E ? ((E) obj).c(e, e.class) : ((d) obj).a(e.class);
            B b3 = (B) h.f985a.put(e, b2);
            if (b3 != null) {
                b3.a();
            }
        } else if (obj instanceof G) {
            ((G) obj).b(b2);
        }
        this.f1017b = (e) b2;
    }

    public static boolean c(int i) {
        return Log.isLoggable("LoaderManager", i);
    }

    @Override // b.k.a.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        e eVar = this.f1017b;
        if (eVar.f1015c.h() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (eVar.f1015c.h() <= 0) {
                return;
            }
            b bVar = (b) eVar.f1015c.i(0);
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(eVar.f1015c.f(0));
            printWriter.print(": ");
            bVar.toString();
            throw null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        sb.append(this.f1016a.getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this.f1016a)));
        sb.append("}}");
        return sb.toString();
    }
}
