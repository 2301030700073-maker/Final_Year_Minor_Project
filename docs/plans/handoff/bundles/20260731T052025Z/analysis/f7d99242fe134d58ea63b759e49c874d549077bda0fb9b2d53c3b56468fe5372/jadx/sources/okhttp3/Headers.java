package okhttp3;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.impl.constraints.NetworkRequestConstraintController;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkMeteredControllerPre28;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingControllerPre28;
import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry$Entry;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.provider.ResourceEncoderRegistry$Entry;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.UIntArray;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.datetime.internal.format.ConcatenatedFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.NonConcatenatedFormatStructure;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Headers implements Iterable, KMappedMarker {
    public static final Headers EMPTY = new Headers(new String[0]);
    public final String[] namesAndValues;

    public Headers(String[] strArr) {
        strArr.getClass();
        this.namesAndValues = strArr;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Headers) {
            return Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
        }
        return false;
    }

    public final String get(String str) {
        String[] strArr = this.namesAndValues;
        strArr.getClass();
        int length = strArr.length - 2;
        int progressionLastElement = Options.Companion.getProgressionLastElement(length, 0, -2);
        if (progressionLastElement > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == progressionLastElement) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = new Pair(name(i), value(i));
        }
        return new UIntArray.Iterator(pairArr);
    }

    public final String name(int i) {
        String str = (String) ArraysKt___ArraysKt.getOrNull(i * 2, this.namesAndValues);
        if (str != null) {
            return str;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(CameraDevices$CC.m("name[", i, ']'));
        return null;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder(0);
        CollectionsKt.addAll(builder.namesAndValues, this.namesAndValues);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String name = name(i);
            String value = value(i);
            sb.append(name);
            sb.append(": ");
            if (_UtilCommonKt.isSensitiveHeader(name)) {
                value = "██";
            }
            sb.append(value);
            sb.append("\n");
        }
        return sb.toString();
    }

    public final String value(int i) {
        String str = (String) ArraysKt___ArraysKt.getOrNull((i * 2) + 1, this.namesAndValues);
        if (str != null) {
            return str;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(CameraDevices$CC.m("value[", i, ']'));
        return null;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public final ArrayList namesAndValues;

        public Builder(int i) {
            switch (i) {
                case 1:
                    this.namesAndValues = new ArrayList(32);
                    break;
                case 2:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                default:
                    this.namesAndValues = new ArrayList(20);
                    break;
                case 3:
                    this.namesAndValues = new ArrayList();
                    break;
                case 4:
                    this.namesAndValues = new ArrayList();
                    break;
                case 5:
                    this.namesAndValues = new ArrayList();
                    break;
                case 6:
                    this.namesAndValues = new ArrayList();
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    this.namesAndValues = new ArrayList();
                    break;
                case 9:
                    this.namesAndValues = new ArrayList(9);
                    break;
                case 10:
                    this.namesAndValues = new ArrayList(2);
                    break;
                case 11:
                    this.namesAndValues = new ArrayList();
                    break;
                case BasicTextKt.ShiftMeta /* 12 */:
                    this.namesAndValues = new ArrayList();
                    break;
                case 13:
                    this.namesAndValues = new ArrayList();
                    break;
            }
        }

        public void add(FormatStructure formatStructure) {
            boolean z = formatStructure instanceof NonConcatenatedFormatStructure;
            ArrayList arrayList = this.namesAndValues;
            if (z) {
                arrayList.add(formatStructure);
            } else {
                if (!(formatStructure instanceof ConcatenatedFormatStructure)) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                Iterator it = ((ConcatenatedFormatStructure) formatStructure).formats.iterator();
                while (it.hasNext()) {
                    arrayList.add((NonConcatenatedFormatStructure) it.next());
                }
            }
        }

        public void addSpread(Object obj) {
            if (obj == null) {
                return;
            }
            boolean z = obj instanceof Object[];
            ArrayList arrayList = this.namesAndValues;
            if (z) {
                Object[] objArr = (Object[]) obj;
                if (objArr.length > 0) {
                    arrayList.ensureCapacity(arrayList.size() + objArr.length);
                    Collections.addAll(arrayList, objArr);
                    return;
                }
                return;
            }
            if (obj instanceof Collection) {
                arrayList.addAll((Collection) obj);
                return;
            }
            if (obj instanceof Iterable) {
                Iterator it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
            } else if (obj instanceof Iterator) {
                Iterator it2 = (Iterator) obj;
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            } else {
                throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
            }
        }

        public void arcTo(float f, float f2, float f3, float f4, boolean z) {
            this.namesAndValues.add(new PathNode.ArcTo(f, f2, 0.0f, false, z, f3, f4));
        }

        public void arcToRelative(float f, float f2, boolean z, boolean z2, float f3, float f4) {
            this.namesAndValues.add(new PathNode.RelativeArcTo(f, f2, 0.0f, z, z2, f3, f4));
        }

        public Headers build() {
            return new Headers((String[]) this.namesAndValues.toArray(new String[0]));
        }

        public void close() {
            this.namesAndValues.add(PathNode.Close.INSTANCE);
        }

        public void curveTo(float f, float f2, float f3, float f4, float f5, float f6) {
            this.namesAndValues.add(new PathNode.CurveTo(f, f2, f3, f4, f5, f6));
        }

        public void curveToRelative(float f, float f2, float f3, float f4, float f5, float f6) {
            this.namesAndValues.add(new PathNode.RelativeCurveTo(f, f2, f3, f4, f5, f6));
        }

        public synchronized ResourceTranscoder get(Class cls, Class cls2) {
            if (cls2.isAssignableFrom(cls)) {
                return UnitTranscoder.UNIT_TRANSCODER;
            }
            Iterator it = this.namesAndValues.iterator();
            while (it.hasNext()) {
                TranscoderRegistry$Entry transcoderRegistry$Entry = (TranscoderRegistry$Entry) it.next();
                if (transcoderRegistry$Entry.fromClass.isAssignableFrom(cls) && cls2.isAssignableFrom(transcoderRegistry$Entry.toClass)) {
                    return transcoderRegistry$Entry.transcoder;
                }
            }
            throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
        }

        public synchronized ArrayList getTranscodeClasses(Class cls, Class cls2) {
            ArrayList arrayList = new ArrayList();
            if (cls2.isAssignableFrom(cls)) {
                arrayList.add(cls2);
                return arrayList;
            }
            Iterator it = this.namesAndValues.iterator();
            while (it.hasNext()) {
                TranscoderRegistry$Entry transcoderRegistry$Entry = (TranscoderRegistry$Entry) it.next();
                if ((transcoderRegistry$Entry.fromClass.isAssignableFrom(cls) && cls2.isAssignableFrom(transcoderRegistry$Entry.toClass)) && !arrayList.contains(transcoderRegistry$Entry.toClass)) {
                    arrayList.add(transcoderRegistry$Entry.toClass);
                }
            }
            return arrayList;
        }

        public void horizontalLineTo(float f) {
            this.namesAndValues.add(new PathNode.HorizontalTo(f));
        }

        public void horizontalLineToRelative(float f) {
            this.namesAndValues.add(new PathNode.RelativeHorizontalTo(f));
        }

        public void lineTo(float f, float f2) {
            this.namesAndValues.add(new PathNode.LineTo(f, f2));
        }

        public void lineToRelative(float f, float f2) {
            this.namesAndValues.add(new PathNode.RelativeLineTo(f, f2));
        }

        public void moveTo(float f, float f2) {
            this.namesAndValues.add(new PathNode.MoveTo(f, f2));
        }

        public void moveToRelative(float f, float f2) {
            this.namesAndValues.add(new PathNode.RelativeMoveTo(f, f2));
        }

        public void quadTo(float f, float f2, float f3, float f4) {
            this.namesAndValues.add(new PathNode.QuadTo(f, f2, f3, f4));
        }

        public void quadToRelative(float f, float f2, float f3, float f4) {
            this.namesAndValues.add(new PathNode.RelativeQuadTo(f, f2, f3, f4));
        }

        public void reflectiveCurveTo(float f, float f2, float f3, float f4) {
            this.namesAndValues.add(new PathNode.ReflectiveCurveTo(f, f2, f3, f4));
        }

        public void reflectiveCurveToRelative(float f, float f2, float f3, float f4) {
            this.namesAndValues.add(new PathNode.RelativeReflectiveCurveTo(f, f2, f3, f4));
        }

        public void reflectiveQuadTo(float f, float f2) {
            this.namesAndValues.add(new PathNode.ReflectiveQuadTo(f, f2));
        }

        public void reflectiveQuadToRelative(float f, float f2) {
            this.namesAndValues.add(new PathNode.RelativeReflectiveQuadTo(f, f2));
        }

        public void removeAll(String str) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.namesAndValues;
                if (i >= arrayList.size()) {
                    return;
                }
                if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                    arrayList.remove(i);
                    arrayList.remove(i);
                    i -= 2;
                }
                i += 2;
            }
        }

        public Flow track(WorkSpec workSpec) {
            workSpec.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator it = this.namesAndValues.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((ConstraintController) next).hasConstraint(workSpec)) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((ConstraintController) it2.next()).track(workSpec.constraints));
            }
            return FlowKt.distinctUntilChanged(new SafeFlow(2, (Flow[]) CollectionsKt.toList(arrayList2).toArray(new Flow[0])));
        }

        public void verticalLineTo(float f) {
            this.namesAndValues.add(new PathNode.VerticalTo(f));
        }

        public void verticalLineToRelative(float f) {
            this.namesAndValues.add(new PathNode.RelativeVerticalTo(f));
        }

        public void add(Object obj) {
            if (obj != null) {
                this.namesAndValues.add(obj);
            } else {
                Regex$$ExternalSyntheticBUOutline0.m("Set contributions cannot be null");
            }
        }

        public synchronized ResourceEncoder get(Class cls) {
            int size = this.namesAndValues.size();
            for (int i = 0; i < size; i++) {
                ResourceEncoderRegistry$Entry resourceEncoderRegistry$Entry = (ResourceEncoderRegistry$Entry) this.namesAndValues.get(i);
                if (resourceEncoderRegistry$Entry.resourceClass.isAssignableFrom(cls)) {
                    return resourceEncoderRegistry$Entry.encoder;
                }
            }
            return null;
        }

        public Builder(LocalStore.AnonymousClass7 anonymousClass7) {
            anonymousClass7.getClass();
            String str = WorkConstraintsTrackerKt.TAG;
            ConstraintTracker constraintTracker = (ConstraintTracker) anonymousClass7.val$placeHolders;
            ConstraintTracker constraintTracker2 = (ConstraintTracker) anonymousClass7.val$messages;
            ArrayList mutableListOf = IntOffsetKt.mutableListOf(new BatteryNotLowController(constraintTracker, 1), new BatteryNotLowController((BatteryNotLowTracker) anonymousClass7.val$folder), new BatteryNotLowController((ConstraintTracker) anonymousClass7.this$0, 4));
            if (Build.VERSION.SDK_INT >= 28) {
                Context context = (Context) anonymousClass7.val$queryString;
                context.getClass();
                Object systemService = context.getSystemService("connectivity");
                systemService.getClass();
                mutableListOf.add(new NetworkRequestConstraintController((ConnectivityManager) systemService));
            } else {
                constraintTracker2.getClass();
                mutableListOf.addAll(IntOffsetKt.listOf((Object[]) new BaseConstraintController[]{new BatteryNotLowController(constraintTracker2, 2), new BatteryNotLowController(constraintTracker2, 3), new NetworkNotRoamingControllerPre28(constraintTracker2), new NetworkMeteredControllerPre28(constraintTracker2)}));
            }
            this.namesAndValues = mutableListOf;
        }

        public Builder(ArrayList arrayList) {
            this.namesAndValues = arrayList;
        }
    }
}
