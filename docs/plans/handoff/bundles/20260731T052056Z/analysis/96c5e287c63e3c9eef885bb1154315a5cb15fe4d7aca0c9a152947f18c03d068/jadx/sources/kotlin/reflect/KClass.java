package kotlin.reflect;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface KClass extends KDeclarationContainer, KClassifier {
    String getQualifiedName();

    String getSimpleName();

    int hashCode();

    boolean isInstance(Object obj);
}
