package androidx.navigation.serialization;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import java.util.LinkedHashMap;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModuleKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RouteEncoder extends CharsKt__CharKt {
    public final KSerializer serializer;
    public final LinkedHashMap typeMap;
    public final SerialModuleImpl serializersModule = SerializersModuleKt.EmptySerializersModule;
    public final LinkedHashMap map = new LinkedHashMap();
    public int elementIndex = -1;

    public RouteEncoder(KSerializer kSerializer, LinkedHashMap linkedHashMap) {
        this.serializer = kSerializer;
        this.typeMap = linkedHashMap;
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        this.elementIndex = i;
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final CharsKt__CharKt encodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (InternalNavType.isValueClass(serialDescriptor)) {
            this.elementIndex = 0;
        }
        return this;
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeNull() {
        internalEncodeValue(null);
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeSerializableValue(KSerializer kSerializer, Object obj) {
        kSerializer.getClass();
        internalEncodeValue(obj);
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final void encodeValue(Object obj) {
        obj.getClass();
        internalEncodeValue(obj);
    }

    @Override // kotlin.text.CharsKt__CharKt
    public final SerialModuleImpl getSerializersModule() {
        return this.serializersModule;
    }

    public final void internalEncodeValue(Object obj) {
        String elementName = this.serializer.getDescriptor().getElementName(this.elementIndex);
        NavType navType = (NavType) this.typeMap.get(elementName);
        if (navType != null) {
            this.map.put(elementName, navType instanceof CollectionNavType ? ((CollectionNavType) navType).serializeAsValues(obj) : IntOffsetKt.listOf(navType.serializeAsValue(obj)));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m("Cannot find NavType for argument ", elementName, ". Please provide NavType through typeMap."));
        }
    }
}
