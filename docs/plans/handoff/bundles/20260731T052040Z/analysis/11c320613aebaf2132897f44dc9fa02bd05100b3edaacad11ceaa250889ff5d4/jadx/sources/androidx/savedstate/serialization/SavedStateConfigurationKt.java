package androidx.savedstate.serialization;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.serialization.serializers.SavedStateSerializer;
import androidx.savedstate.serialization.serializers.SizeFSerializer;
import androidx.savedstate.serialization.serializers.SizeSerializer;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.ComponentRegistry;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.serialization.modules.ContextualProvider;
import kotlinx.serialization.modules.SerializersModuleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SavedStateConfigurationKt {
    public static final ComponentRegistry.Builder DEFAULT_SERIALIZERS_MODULE;

    static {
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(10);
        ComponentRegistry.Builder.registerSerializer$default(builder, Reflection.getOrCreateKotlinClass(Bundle.class), new ContextualProvider.Argless(SavedStateSerializer.INSTANCE));
        builder.contextual(Reflection.getOrCreateKotlinClass(MutableStateFlow.class), new Data$$ExternalSyntheticLambda0(4));
        ComponentRegistry.Builder build = builder.build();
        ComponentRegistry.Builder builder2 = new ComponentRegistry.Builder(10);
        ComponentRegistry.Builder.registerSerializer$default(builder2, Reflection.getOrCreateKotlinClass(Size.class), new ContextualProvider.Argless(SizeSerializer.INSTANCE));
        ComponentRegistry.Builder.registerSerializer$default(builder2, Reflection.getOrCreateKotlinClass(SizeF.class), new ContextualProvider.Argless(SizeFSerializer.INSTANCE));
        builder2.contextual(Reflection.getOrCreateKotlinClass(SparseArray.class), new Data$$ExternalSyntheticLambda0(5));
        ComponentRegistry.Builder build2 = builder2.build();
        ComponentRegistry.Builder builder3 = SerializersModuleKt.EmptySerializersModule;
        ComponentRegistry.Builder builder4 = new ComponentRegistry.Builder(10);
        build.dumpTo(builder4);
        build2.dumpTo(builder4);
        DEFAULT_SERIALIZERS_MODULE = builder4.build();
    }
}
