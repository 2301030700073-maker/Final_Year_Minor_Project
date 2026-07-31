package kotlinx.coroutines.flow;

import android.os.Bundle;
import androidx.compose.ui.unit.DpKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.work.Operation$State;
import java.util.Arrays;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.internal.JsonPath$Tombstone;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SharingConfig {
    public final /* synthetic */ int $r8$classId;
    public Object context;
    public int extraBufferCapacity;
    public Object onBufferOverflow;
    public final Object upstream;

    public SharingConfig(Bundle bundle) {
        this.$r8$classId = 1;
        bundle.getClass();
        String string = bundle.getString("nav-entry-state:id");
        if (string == null) {
            Operation$State.keyOrValueNotFoundError("nav-entry-state:id");
            throw null;
        }
        this.upstream = string;
        this.extraBufferCapacity = DpKt.m701getIntimpl(bundle, "nav-entry-state:destination-id");
        this.onBufferOverflow = DpKt.m702getSavedStateimpl(bundle, "nav-entry-state:args");
        this.context = DpKt.m702getSavedStateimpl(bundle, "nav-entry-state:saved-state");
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.extraBufferCapacity + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((Object[]) this.onBufferOverflow)[i2];
            if (obj instanceof SerialDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                boolean areEqual = Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$2);
                int[] iArr = (int[]) this.context;
                if (!areEqual) {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        sb.append(".");
                        sb.append(serialDescriptor.getElementName(i3));
                    }
                } else if (iArr[i2] != -1) {
                    sb.append("[");
                    sb.append(((int[]) this.context)[i2]);
                    sb.append("]");
                }
            } else if (obj == JsonPath$Tombstone.INSTANCE$1) {
                sb.append("[<debug info disabled>]");
            } else if (obj != JsonPath$Tombstone.INSTANCE) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    public void resize() {
        int i = this.extraBufferCapacity * 2;
        this.onBufferOverflow = Arrays.copyOf((Object[]) this.onBufferOverflow, i);
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = -1;
        }
        ArraysKt___ArraysKt.copyInto$default(0, 0, 14, (int[]) this.context, iArr);
        this.context = iArr;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                return getPath();
            default:
                return super.toString();
        }
    }

    public SharingConfig(NavBackStackEntry navBackStackEntry, int i) {
        this.$r8$classId = 1;
        this.upstream = navBackStackEntry.id;
        this.extraBufferCapacity = i;
        NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.impl;
        this.onBufferOverflow = navBackStackEntryImpl.getArguments$navigation_common_release();
        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        this.context = bundleOf;
        navBackStackEntryImpl.savedStateRegistryController.performSave(bundleOf);
    }

    public SharingConfig(JsonConfiguration jsonConfiguration) {
        this.$r8$classId = 2;
        this.upstream = jsonConfiguration;
        this.onBufferOverflow = new Object[8];
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = -1;
        }
        this.context = iArr;
        this.extraBufferCapacity = -1;
    }

    public SharingConfig(int i, CoroutineContext coroutineContext, BufferOverflow bufferOverflow, Flow flow) {
        this.$r8$classId = 0;
        this.upstream = flow;
        this.extraBufferCapacity = i;
        this.onBufferOverflow = bufferOverflow;
        this.context = coroutineContext;
    }
}
