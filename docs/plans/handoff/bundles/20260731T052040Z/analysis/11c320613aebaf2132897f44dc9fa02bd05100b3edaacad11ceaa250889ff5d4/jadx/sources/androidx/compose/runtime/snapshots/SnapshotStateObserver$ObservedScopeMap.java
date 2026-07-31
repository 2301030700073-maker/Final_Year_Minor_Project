package androidx.compose.runtime.snapshots;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.GapComposer$derivedStateObserver$1;
import androidx.compose.runtime.collection.MutableVector;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SnapshotStateObserver$ObservedScopeMap {
    public Object currentScope;
    public MutableObjectIntMap currentScopeReads;
    public int deriveStateScopeCount;
    public final Function1 onChanged;
    public boolean readingDerivedStates;
    public int currentToken = -1;
    public final MutableScatterMap valueToScopes = Jsoup.m733constructorimpl$default();
    public final MutableScatterMap scopeToValues = new MutableScatterMap();
    public final MutableScatterSet invalidated = new MutableScatterSet();
    public final MutableVector statesToReread = new MutableVector(new DerivedSnapshotState[16]);
    public final GapComposer$derivedStateObserver$1 derivedStateObserver = new GapComposer$derivedStateObserver$1(this, 1);
    public final MutableScatterMap dependencyToDerivedStates = Jsoup.m733constructorimpl$default();
    public final HashMap recordedDerivedStateValues = new HashMap();

    public SnapshotStateObserver$ObservedScopeMap(Function1 function1) {
        this.onChanged = function1;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final boolean recordInvalidation(java.util.Set r46) {
        /*
            Method dump skipped, instructions count: 1680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap.recordInvalidation(java.util.Set):boolean");
    }

    public final void recordRead(Object obj, int i, Object obj2, MutableObjectIntMap mutableObjectIntMap) {
        int i2;
        if (this.deriveStateScopeCount > 0) {
            return;
        }
        int findIndex = mutableObjectIntMap.findIndex(obj);
        if (findIndex < 0) {
            findIndex = ~findIndex;
            i2 = -1;
        } else {
            i2 = mutableObjectIntMap.values[findIndex];
        }
        mutableObjectIntMap.keys[findIndex] = obj;
        mutableObjectIntMap.values[findIndex] = i;
        if ((obj instanceof DerivedSnapshotState) && i2 != i) {
            DerivedSnapshotState.ResultRecord currentRecord = ((DerivedSnapshotState) obj).getCurrentRecord();
            this.recordedDerivedStateValues.put(obj, currentRecord.result);
            MutableObjectIntMap mutableObjectIntMap2 = currentRecord.dependencies;
            MutableScatterMap mutableScatterMap = this.dependencyToDerivedStates;
            Jsoup.m736removeScopeimpl(mutableScatterMap, obj);
            Object[] objArr = mutableObjectIntMap2.keys;
            long[] jArr = mutableObjectIntMap2.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i3 = 0;
                while (true) {
                    long j = jArr[i3];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i4 = 8 - ((~(i3 - length)) >>> 31);
                        for (int i5 = 0; i5 < i4; i5++) {
                            if ((j & 255) < 128) {
                                StateObject stateObject = (StateObject) objArr[(i3 << 3) + i5];
                                if (stateObject instanceof StateObjectImpl) {
                                    ((StateObjectImpl) stateObject).m177recordReadInh_f27i8$runtime(2);
                                }
                                Jsoup.m732addimpl(mutableScatterMap, stateObject, obj);
                            }
                            j >>= 8;
                        }
                        if (i4 != 8) {
                            break;
                        }
                    }
                    if (i3 == length) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
        }
        if (i2 == -1) {
            if (obj instanceof StateObjectImpl) {
                ((StateObjectImpl) obj).m177recordReadInh_f27i8$runtime(2);
            }
            Jsoup.m732addimpl(this.valueToScopes, obj, obj2);
        }
    }

    public final void removeObservation(Object obj, Object obj2) {
        MutableScatterMap mutableScatterMap = this.valueToScopes;
        Jsoup.m735removeimpl(mutableScatterMap, obj2, obj);
        if (!(obj2 instanceof DerivedSnapshotState) || mutableScatterMap.containsKey(obj2)) {
            return;
        }
        Jsoup.m736removeScopeimpl(this.dependencyToDerivedStates, obj2);
        this.recordedDerivedStateValues.remove(obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void removeScopeIf() {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap.removeScopeIf():void");
    }
}
