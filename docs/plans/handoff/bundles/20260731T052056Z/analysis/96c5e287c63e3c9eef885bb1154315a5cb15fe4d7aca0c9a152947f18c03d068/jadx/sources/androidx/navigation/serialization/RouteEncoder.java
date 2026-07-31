package androidx.navigation.serialization;

import androidx.compose.animation.core.Animation;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.modules.SerializersModuleKt;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RouteEncoder extends UuidKt {
    public final KSerializer serializer;
    public final LinkedHashMap typeMap;
    public final LoginClient serializersModule = SerializersModuleKt.EmptySerializersModule;
    public final LinkedHashMap map = new LinkedHashMap();
    public int elementIndex = -1;

    public RouteEncoder(KSerializer kSerializer, LinkedHashMap linkedHashMap) {
        this.serializer = kSerializer;
        this.typeMap = linkedHashMap;
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        this.elementIndex = i;
    }

    @Override // kotlin.uuid.UuidKt
    public final UuidKt encodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$1) && serialDescriptor.isInline() && serialDescriptor.getElementsCount() == 1) {
            this.elementIndex = 0;
        }
        return this;
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeNull() {
        internalEncodeValue(null);
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeSerializableValue(KSerializer kSerializer, Object obj) {
        kSerializer.getClass();
        internalEncodeValue(obj);
    }

    @Override // kotlin.uuid.UuidKt
    public final void encodeValue(Object obj) {
        internalEncodeValue(obj);
    }

    @Override // kotlin.uuid.UuidKt
    public final LoginClient getSerializersModule() {
        return this.serializersModule;
    }

    public final void internalEncodeValue(Object obj) {
        String elementName = this.serializer.getDescriptor().getElementName(this.elementIndex);
        NavType navType = (NavType) this.typeMap.get(elementName);
        if (navType != null) {
            this.map.put(elementName, navType instanceof CollectionNavType ? ((CollectionNavType) navType).serializeAsValues(obj) : Room.listOf(navType.serializeAsValue(obj)));
        } else {
            ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m("Cannot find NavType for argument ", elementName, ". Please provide NavType through typeMap."));
        }
    }
}
