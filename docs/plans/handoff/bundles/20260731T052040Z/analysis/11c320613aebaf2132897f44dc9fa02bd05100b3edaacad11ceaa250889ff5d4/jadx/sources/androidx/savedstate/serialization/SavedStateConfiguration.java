package androidx.savedstate.serialization;

import coil3.ComponentRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateConfiguration {
    public static final SavedStateConfiguration DEFAULT = new SavedStateConfiguration();
    public final ComponentRegistry.Builder serializersModule = SavedStateConfigurationKt.DEFAULT_SERIALIZERS_MODULE;
    public final int classDiscriminatorMode = 2;
}
