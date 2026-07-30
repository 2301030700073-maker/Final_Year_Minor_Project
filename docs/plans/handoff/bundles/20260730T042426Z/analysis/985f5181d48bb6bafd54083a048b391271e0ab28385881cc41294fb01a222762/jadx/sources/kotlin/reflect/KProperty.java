package kotlin.reflect;

/* compiled from: KProperty.kt */
/* loaded from: classes2.dex */
public interface KProperty extends KCallable {

    /* compiled from: KProperty.kt */
    public interface Accessor {
        KProperty getProperty();
    }

    /* compiled from: KProperty.kt */
    public interface Getter extends Accessor, KFunction {
    }

    Getter getGetter();
}
