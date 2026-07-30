package b.b.c;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class M implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f263a;

    /* renamed from: b, reason: collision with root package name */
    public final String f264b;

    /* renamed from: c, reason: collision with root package name */
    public Method f265c;

    /* renamed from: d, reason: collision with root package name */
    public Context f266d;

    public M(View view, String str) {
        this.f263a = view;
        this.f264b = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String sb;
        Method method;
        if (this.f265c == null) {
            Context context = this.f263a.getContext();
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f264b, View.class)) != null) {
                        this.f265c = method;
                        this.f266d = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f263a.getId();
            if (id == -1) {
                sb = "";
            } else {
                StringBuilder f = c.a.c.a.a.f(" with id '");
                f.append(this.f263a.getContext().getResources().getResourceEntryName(id));
                f.append("'");
                sb = f.toString();
            }
            StringBuilder f2 = c.a.c.a.a.f("Could not find method ");
            f2.append(this.f264b);
            f2.append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
            f2.append(this.f263a.getClass());
            f2.append(sb);
            throw new IllegalStateException(f2.toString());
        }
        try {
            this.f265c.invoke(this.f266d, view);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
        } catch (InvocationTargetException e2) {
            throw new IllegalStateException("Could not execute method for android:onClick", e2);
        }
    }
}
