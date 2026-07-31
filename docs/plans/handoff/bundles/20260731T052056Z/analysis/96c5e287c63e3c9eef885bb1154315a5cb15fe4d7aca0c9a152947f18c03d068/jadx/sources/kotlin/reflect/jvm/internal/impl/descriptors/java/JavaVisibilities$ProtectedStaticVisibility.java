package kotlin.reflect.jvm.internal.impl.descriptors.java;

import androidx.appcompat.view.ActionMode;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaVisibilities$ProtectedStaticVisibility extends ActionMode {
    public static final JavaVisibilities$ProtectedStaticVisibility INSTANCE = new JavaVisibilities$ProtectedStaticVisibility("protected_static", true);

    @Override // androidx.appcompat.view.ActionMode
    public final String getInternalDisplayName() {
        return "protected/*protected static*/";
    }

    @Override // androidx.appcompat.view.ActionMode
    public final ActionMode normalize() {
        return Visibilities.Protected.INSTANCE;
    }
}
