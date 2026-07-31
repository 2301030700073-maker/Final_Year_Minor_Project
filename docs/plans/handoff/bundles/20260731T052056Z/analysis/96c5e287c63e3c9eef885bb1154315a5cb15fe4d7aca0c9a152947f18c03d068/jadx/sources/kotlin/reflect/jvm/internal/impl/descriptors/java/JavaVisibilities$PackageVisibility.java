package kotlin.reflect.jvm.internal.impl.descriptors.java;

import androidx.appcompat.view.ActionMode;
import kotlin.collections.builders.MapBuilder;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaVisibilities$PackageVisibility extends ActionMode {
    public static final JavaVisibilities$PackageVisibility INSTANCE = new JavaVisibilities$PackageVisibility("package", false);

    @Override // androidx.appcompat.view.ActionMode
    public final Integer compareTo(ActionMode actionMode) {
        actionMode.getClass();
        if (this == actionMode) {
            return 0;
        }
        MapBuilder mapBuilder = Visibilities.ORDERED_VISIBILITIES;
        return (actionMode == Visibilities.Private.INSTANCE || actionMode == Visibilities.PrivateToThis.INSTANCE) ? 1 : -1;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final String getInternalDisplayName() {
        return "public/*package*/";
    }

    @Override // androidx.appcompat.view.ActionMode
    public final ActionMode normalize() {
        return Visibilities.Protected.INSTANCE;
    }
}
