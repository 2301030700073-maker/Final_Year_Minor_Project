package kotlinx.datetime.internal.format;

import kotlinx.datetime.format.OffsetFields$sign$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractFieldSpec {
    public abstract PropertyAccessor getAccessor();

    public abstract Object getDefaultValue();

    public abstract String getName();

    public abstract OffsetFields$sign$1 getSign();

    public final String toString() {
        return "The field " + getName() + " (default value is " + getDefaultValue() + ')';
    }
}
