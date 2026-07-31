package kotlin.jvm.internal;

import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutinesInternalError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PropertyReference extends CallableReference implements KProperty {
    public final boolean syntheticJavaProperty;

    public PropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.syntheticJavaProperty = (i & 2) == 2;
    }

    public final KCallable compute() {
        if (this.syntheticJavaProperty) {
            return this;
        }
        KCallable kCallable = this.reflected;
        if (kCallable != null) {
            return kCallable;
        }
        KCallable computeReflected = computeReflected();
        this.reflected = computeReflected;
        return computeReflected;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PropertyReference) {
            PropertyReference propertyReference = (PropertyReference) obj;
            return getOwner().equals(propertyReference.getOwner()) && this.name.equals(propertyReference.name) && this.signature.equals(propertyReference.signature) && Intrinsics.areEqual(this.receiver, propertyReference.receiver);
        }
        if (obj instanceof KProperty) {
            return obj.equals(compute());
        }
        return false;
    }

    public final KProperty getReflected() {
        if (this.syntheticJavaProperty) {
            Gson$$ExternalSyntheticBUOutline0.m("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
            return null;
        }
        KCallable compute = compute();
        if (compute != this) {
            return (KProperty) compute;
        }
        throw new CoroutinesInternalError("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    public final int hashCode() {
        return this.signature.hashCode() + Animation.CC.m(getOwner().hashCode() * 31, 31, this.name);
    }

    public final String toString() {
        KCallable compute = compute();
        return compute != this ? compute.toString() : Animation.CC.m(new StringBuilder("property "), this.name, " (Kotlin reflection is not available)");
    }
}
