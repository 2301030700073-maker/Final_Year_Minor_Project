package kotlin.reflect.jvm.internal.impl.load.kotlin;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AbstractBinaryClassAnnotationLoader$PropertyRelatedElement {
    private static final /* synthetic */ AbstractBinaryClassAnnotationLoader$PropertyRelatedElement[] $VALUES;
    public static final AbstractBinaryClassAnnotationLoader$PropertyRelatedElement BACKING_FIELD;
    public static final AbstractBinaryClassAnnotationLoader$PropertyRelatedElement DELEGATE_FIELD;
    public static final AbstractBinaryClassAnnotationLoader$PropertyRelatedElement PROPERTY;

    static {
        AbstractBinaryClassAnnotationLoader$PropertyRelatedElement abstractBinaryClassAnnotationLoader$PropertyRelatedElement = new AbstractBinaryClassAnnotationLoader$PropertyRelatedElement("PROPERTY", 0);
        PROPERTY = abstractBinaryClassAnnotationLoader$PropertyRelatedElement;
        AbstractBinaryClassAnnotationLoader$PropertyRelatedElement abstractBinaryClassAnnotationLoader$PropertyRelatedElement2 = new AbstractBinaryClassAnnotationLoader$PropertyRelatedElement("BACKING_FIELD", 1);
        BACKING_FIELD = abstractBinaryClassAnnotationLoader$PropertyRelatedElement2;
        AbstractBinaryClassAnnotationLoader$PropertyRelatedElement abstractBinaryClassAnnotationLoader$PropertyRelatedElement3 = new AbstractBinaryClassAnnotationLoader$PropertyRelatedElement("DELEGATE_FIELD", 2);
        DELEGATE_FIELD = abstractBinaryClassAnnotationLoader$PropertyRelatedElement3;
        $VALUES = new AbstractBinaryClassAnnotationLoader$PropertyRelatedElement[]{abstractBinaryClassAnnotationLoader$PropertyRelatedElement, abstractBinaryClassAnnotationLoader$PropertyRelatedElement2, abstractBinaryClassAnnotationLoader$PropertyRelatedElement3};
    }

    public static AbstractBinaryClassAnnotationLoader$PropertyRelatedElement valueOf(String str) {
        return (AbstractBinaryClassAnnotationLoader$PropertyRelatedElement) Enum.valueOf(AbstractBinaryClassAnnotationLoader$PropertyRelatedElement.class, str);
    }

    public static AbstractBinaryClassAnnotationLoader$PropertyRelatedElement[] values() {
        return (AbstractBinaryClassAnnotationLoader$PropertyRelatedElement[]) $VALUES.clone();
    }
}
