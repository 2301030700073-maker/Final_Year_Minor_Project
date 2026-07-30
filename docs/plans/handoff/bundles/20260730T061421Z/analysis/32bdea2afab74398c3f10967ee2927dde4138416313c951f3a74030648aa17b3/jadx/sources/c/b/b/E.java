package c.b.b;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public class E implements InterfaceC0466m0 {

    /* renamed from: a, reason: collision with root package name */
    public static final E f3117a = new E();

    @Override // c.b.b.InterfaceC0466m0
    public boolean a(Class cls) {
        return K.class.isAssignableFrom(cls);
    }

    @Override // c.b.b.InterfaceC0466m0
    public InterfaceC0464l0 b(Class cls) {
        if (!K.class.isAssignableFrom(cls)) {
            StringBuilder f = c.a.c.a.a.f("Unsupported message type: ");
            f.append(cls.getName());
            throw new IllegalArgumentException(f.toString());
        }
        try {
            return (InterfaceC0464l0) K.getDefaultInstance(cls.asSubclass(K.class)).dynamicMethod(GeneratedMessageLite$MethodToInvoke.BUILD_MESSAGE_INFO, null, null);
        } catch (Exception e) {
            StringBuilder f2 = c.a.c.a.a.f("Unable to get message info for ");
            f2.append(cls.getName());
            throw new RuntimeException(f2.toString(), e);
        }
    }
}
