package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.compose.ui.platform.WeakCache;
import androidx.navigation.NavType;
import java.util.LinkedHashMap;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModuleKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RouteDecoder extends Base64 {
    public int elementIndex = -1;
    public String elementName = "";
    public final SerialModuleImpl serializersModule = SerializersModuleKt.EmptySerializersModule;
    public final WeakCache store;

    public RouteDecoder(Bundle bundle, LinkedHashMap linkedHashMap) {
        this.store = new WeakCache(23, bundle, linkedHashMap);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeElementIndex(SerialDescriptor serialDescriptor) {
        String elementName;
        WeakCache weakCache;
        serialDescriptor.getClass();
        int i = this.elementIndex;
        do {
            i++;
            if (i >= serialDescriptor.getElementsCount()) {
                return -1;
            }
            elementName = serialDescriptor.getElementName(i);
            weakCache = this.store;
            weakCache.getClass();
            elementName.getClass();
        } while (!((Bundle) weakCache.values).containsKey(elementName));
        this.elementIndex = i;
        this.elementName = elementName;
        return i;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final Decoder decodeInline(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (InternalNavType.isValueClass(serialDescriptor)) {
            this.elementName = serialDescriptor.getElementName(0);
            this.elementIndex = 0;
        }
        return this;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final boolean decodeNotNullMark() {
        String str = this.elementName;
        WeakCache weakCache = this.store;
        weakCache.getClass();
        str.getClass();
        NavType navType = (NavType) ((LinkedHashMap) weakCache.referenceQueue).get(str);
        return (navType != null ? navType.get(str, (Bundle) weakCache.values) : null) != null;
    }

    @Override // org.minidns.util.Base64, kotlinx.serialization.encoding.Decoder
    public final Object decodeSerializableValue(KSerializer kSerializer) {
        kSerializer.getClass();
        return internalDecodeValue();
    }

    @Override // org.minidns.util.Base64
    public final Object decodeValue() {
        return internalDecodeValue();
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    public final SerialModuleImpl getSerializersModule() {
        return this.serializersModule;
    }

    public final Object internalDecodeValue() {
        String str = this.elementName;
        WeakCache weakCache = this.store;
        weakCache.getClass();
        str.getClass();
        NavType navType = (NavType) ((LinkedHashMap) weakCache.referenceQueue).get(str);
        Object obj = navType != null ? navType.get(str, (Bundle) weakCache.values) : null;
        if (obj != null) {
            return obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) this.elementName, "Unexpected null value for non-nullable argument ");
        return null;
    }
}
