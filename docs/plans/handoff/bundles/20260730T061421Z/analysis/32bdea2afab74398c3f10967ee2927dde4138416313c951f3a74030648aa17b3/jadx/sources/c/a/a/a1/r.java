package c.a.a.a1;

import android.content.Context;
import b.l.W;
import com.android.launcher3.util.MainThreadInitializedObject;

/* loaded from: classes.dex */
public final /* synthetic */ class r implements MainThreadInitializedObject.ObjectProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f1787a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1788b;

    public /* synthetic */ r(Class cls, int i) {
        this.f1787a = cls;
        this.f1788b = i;
    }

    @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
    public final Object get(Context context) {
        return W.getObject(this.f1787a, context, this.f1788b);
    }
}
