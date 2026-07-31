package org.minidns.dnsqueryresult;

import android.view.View;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.ui.layout.Measurable;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.load.model.ByteBufferEncoder;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import org.apache.james.mime4j.stream.Field;
import org.apache.james.mime4j.util.ByteSequence;
import org.minidns.dnsmessage.DnsMessage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DnsQueryResult implements ModelLoaderFactory, Field {
    public final /* synthetic */ int $r8$classId;
    public final Object response;

    public DnsQueryResult(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 2:
                MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
                this.response = new MutableIntObjectMap();
                break;
            case 3:
                this.response = new Object();
                break;
            case 4:
                this.response = new ArrayList();
                break;
            case 5:
            default:
                this.response = Updater.mutableStateOf$default(Boolean.FALSE);
                break;
            case 6:
                this.response = new ArrayDeque(20);
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean appendGroupSourceInformation(int r8, androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation r9, java.lang.Object r10) {
        /*
            r7 = this;
            java.util.ArrayList r0 = r9.groups
            r1 = 1
            if (r0 != 0) goto La
            r10 = 0
            r7.appendTraceFrame(r8, r9, r10)
            return r1
        La:
            int r2 = r0.size()
            r3 = 0
            r4 = r3
        L10:
            if (r4 >= r2) goto L3a
            java.lang.Object r5 = r0.get(r4)
            boolean r6 = r5 instanceof androidx.compose.runtime.composer.gapbuffer.GapAnchor
            if (r6 == 0) goto L21
            if (r5 == r10) goto L1d
            goto L32
        L1d:
            r7.appendTraceFrame(r3, r9, r5)
            return r1
        L21:
            boolean r6 = r5 instanceof androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation
            if (r6 == 0) goto L35
            r6 = r5
            androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation r6 = (androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation) r6
            boolean r6 = r7.appendGroupSourceInformation(r8, r6, r10)
            if (r6 == 0) goto L32
            r7.appendTraceFrame(r3, r9, r5)
            return r1
        L32:
            int r4 = r4 + 1
            goto L10
        L35:
            java.lang.String r7 = "Unexpected child source info "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r5, r7)
        L3a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.dnsqueryresult.DnsQueryResult.appendGroupSourceInformation(int, androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation, java.lang.Object):boolean");
    }

    public void appendTraceFrame(int i, GapGroupSourceInformation gapGroupSourceInformation, Object obj) {
        ((ArrayList) this.response).add(new ComposeStackTraceFrame(i, null, null));
    }

    @Override // com.bumptech.glide.load.model.ModelLoaderFactory
    public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
        return new FileLoader(0, (ByteBufferEncoder) this.response);
    }

    public abstract void clearWatchSet$runtime(SendChannel sendChannel);

    public abstract void commitSubscriptionChanges$runtime();

    public abstract void dispose$runtime();

    /* renamed from: getAndMeasure--hBUhpc */
    public abstract LazyLayoutMeasuredItem mo244getAndMeasurehBUhpc(int i, int i2, int i3, long j);

    @Override // org.apache.james.mime4j.stream.Field
    public String getBody() {
        return ((Field) this.response).getBody();
    }

    public abstract Object getCurrentState();

    @Override // org.apache.james.mime4j.stream.Field
    public String getName() {
        return ((Field) this.response).getName();
    }

    @Override // org.apache.james.mime4j.stream.Field
    public String getNameLowerCase() {
        return ((Field) this.response).getNameLowerCase();
    }

    /* renamed from: getPlaceables-3p2s80s, reason: not valid java name */
    public List m1085getPlaceables3p2s80s(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, long j) {
        MutableIntObjectMap mutableIntObjectMap = (MutableIntObjectMap) this.response;
        List list = (List) mutableIntObjectMap.get(i);
        if (list != null) {
            return list;
        }
        LazyLayoutItemProvider lazyLayoutItemProvider = lazyLayoutMeasureScopeImpl.itemProvider;
        MutableIntObjectMap mutableIntObjectMap2 = lazyLayoutMeasureScopeImpl.measurablesCache;
        List list2 = (List) mutableIntObjectMap2.get(i);
        if (list2 == null) {
            Object key = lazyLayoutItemProvider.getKey(i);
            list2 = lazyLayoutMeasureScopeImpl.subcomposeMeasureScope.subcompose(key, lazyLayoutMeasureScopeImpl.itemContentFactory.getContent(i, key, lazyLayoutItemProvider.getContentType(i)));
            mutableIntObjectMap2.set(i, list2);
        }
        int size = list2.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(((Measurable) list2.get(i2)).mo571measureBRTryo0(j));
        }
        mutableIntObjectMap.set(i, arrayList);
        return arrayList;
    }

    @Override // org.apache.james.mime4j.stream.Field
    public ByteSequence getRaw() {
        return ((Field) this.response).getRaw();
    }

    public abstract Object getTargetState();

    public boolean isVisibilityUnchanged() {
        int i;
        SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = (SpecialEffectsController$FragmentStateManagerOperation) this.response;
        View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
        if (view != null) {
            i = 4;
            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                int visibility = view.getVisibility();
                if (visibility == 0) {
                    i = 2;
                } else if (visibility != 4) {
                    if (visibility != 8) {
                        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unknown visibility ", visibility));
                        return false;
                    }
                    i = 3;
                }
            }
        } else {
            i = 0;
        }
        int i2 = specialEffectsController$FragmentStateManagerOperation.finalState;
        if (i != i2) {
            return (i == 2 || i2 == 2) ? false : true;
        }
        return true;
    }

    public void offer(Poolable poolable) {
        ArrayDeque arrayDeque = (ArrayDeque) this.response;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(poolable);
        }
    }

    public void processEdge(int i, Object obj, GapGroupSourceInformation gapGroupSourceInformation, Object obj2) {
        if (Intrinsics.areEqual(obj, Composer.Companion.Empty)) {
            appendTraceFrame(i, gapGroupSourceInformation, null);
        }
    }

    public abstract Function1 readObserverFor$runtime(SendChannel sendChannel);

    public abstract void reportSnapshotFlowCancellation$runtime(Channel channel);

    public abstract void setCurrentState$animation_core(Object obj);

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return ((DnsMessage) this.response).toString();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((Field) this.response).toString();
            default:
                return super.toString();
        }
    }

    public abstract void transitionConfigured$animation_core(Transition transition);

    public abstract void transitionRemoved$animation_core();

    public /* synthetic */ DnsQueryResult(int i, Object obj) {
        this.$r8$classId = i;
        this.response = obj;
    }

    public DnsQueryResult(SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation) {
        this.$r8$classId = 5;
        specialEffectsController$FragmentStateManagerOperation.getClass();
        this.response = specialEffectsController$FragmentStateManagerOperation;
    }
}
