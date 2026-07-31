package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.node.Owner;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidView_androidKt$createAndroidViewNodeFactory$1$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $compositeKeyHash;
    public final /* synthetic */ Object $context;
    public final /* synthetic */ Object $factory;
    public final /* synthetic */ Object $ownerView;
    public final /* synthetic */ Object $parentReference;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $stateRegistry;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidView_androidKt$createAndroidViewNodeFactory$1$1(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        super(0);
        this.$r8$classId = i2;
        this.$context = obj;
        this.$factory = obj2;
        this.$parentReference = obj3;
        this.$stateRegistry = obj4;
        this.$compositeKeyHash = i;
        this.$ownerView = obj5;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.$ownerView;
        Object obj2 = this.$stateRegistry;
        Object obj3 = this.$parentReference;
        Object obj4 = this.$factory;
        Object obj5 = this.$context;
        switch (i) {
            case 0:
                KeyEvent.Callback callback = (View) obj;
                callback.getClass();
                return new ViewFactoryHolder((Context) obj5, (Function1) obj4, (GapComposer.CompositionContextImpl) obj3, (SaveableStateRegistry) obj2, this.$compositeKeyHash, (Owner) callback).getLayoutNode();
            default:
                return CollectionsKt.toList(((AnnotationAndConstantLoader) ((ActivityGalleryBinding) ((MemberDeserializer) obj5).c.result).transitionReceiver).loadValueParameterAnnotations((AbstractApplier) obj4, (AbstractMessageLite) obj3, (AnnotatedCallableKind) obj2, this.$compositeKeyHash, (ProtoBuf$ValueParameter) obj));
        }
    }
}
