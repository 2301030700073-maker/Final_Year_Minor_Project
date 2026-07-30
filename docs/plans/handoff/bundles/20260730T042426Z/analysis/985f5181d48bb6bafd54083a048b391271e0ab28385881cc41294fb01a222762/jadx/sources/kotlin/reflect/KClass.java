package kotlin.reflect;

/* compiled from: KClass.kt */
/* loaded from: classes2.dex */
public interface KClass extends KDeclarationContainer, KAnnotatedElement, KClassifier {
    String getQualifiedName();

    String getSimpleName();

    boolean isInstance(Object obj);

    boolean isValue();
}
