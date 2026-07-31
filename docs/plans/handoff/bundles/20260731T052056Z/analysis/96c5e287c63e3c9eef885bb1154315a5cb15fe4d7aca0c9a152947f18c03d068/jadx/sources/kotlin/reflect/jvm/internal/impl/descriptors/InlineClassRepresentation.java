package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InlineClassRepresentation extends ValueClassRepresentation {
    public final Name underlyingPropertyName;
    public final SimpleTypeMarker underlyingType;

    public InlineClassRepresentation(Name name, SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        this.underlyingPropertyName = name;
        this.underlyingType = simpleTypeMarker;
    }

    public final String toString() {
        return "InlineClassRepresentation(underlyingPropertyName=" + this.underlyingPropertyName + ", underlyingType=" + this.underlyingType + ')';
    }
}
