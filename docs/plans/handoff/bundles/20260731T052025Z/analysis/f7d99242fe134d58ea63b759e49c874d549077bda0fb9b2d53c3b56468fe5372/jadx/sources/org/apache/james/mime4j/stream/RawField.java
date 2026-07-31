package org.apache.james.mime4j.stream;

import android.hardware.camera2.CameraAccessException;
import android.os.Trace;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.util.ArrayMap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CaptureSequence;
import androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.graph.GraphRequestProcessorKt;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.MutableTagBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.TagBundle;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.backend.imap.ImapSync;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.UIntArray;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.ConstrainedOnceSequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http1.HeadersReader;
import org.apache.james.mime4j.util.ByteSequence;
import org.apache.james.mime4j.util.ContentUtil;
import org.apache.james.mime4j.util.MimeUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RawField implements Field {
    public final /* synthetic */ int $r8$classId;
    public Serializable body;
    public int delimiterIdx;
    public Object name;
    public Object nameLowerCase;
    public final Object raw;

    public RawField(Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor) {
        this.$r8$classId = 1;
        this.raw = camera2CaptureSequenceProcessor;
        AtomicInt atomicInt = GraphRequestProcessorKt.graphRequestProcessorIds;
        atomicInt.getClass();
        this.delimiterIdx = AtomicInt.FU.incrementAndGet(atomicInt);
        this.name = AtomicFU.atomic(false);
        this.body = new ArrayList();
        this.nameLowerCase = new BiometricPrompt(20, this);
    }

    public void abortCaptures$camera_camera2_pipe() {
        List<Camera2CaptureSequence> list;
        synchronized (((ArrayList) this.body)) {
            list = CollectionsKt.toList((ArrayList) this.body);
            ((ArrayList) this.body).clear();
        }
        for (Camera2CaptureSequence camera2CaptureSequence : list) {
            Trace.beginSection("InvokeInternalListeners");
            int size = camera2CaptureSequence.captureMetadataList.size();
            for (int i = 0; i < size; i++) {
                RequestMetadata requestMetadata = (RequestMetadata) camera2CaptureSequence.captureMetadataList.get(i);
                int size2 = camera2CaptureSequence.listeners.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((Request.Listener) camera2CaptureSequence.listeners.get(i2)).onAborted(requestMetadata.getRequest());
                }
            }
            Trace.endSection();
            Trace.beginSection("InvokeRequestListeners");
            int size3 = camera2CaptureSequence.captureMetadataList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                RequestMetadata requestMetadata2 = (RequestMetadata) camera2CaptureSequence.captureMetadataList.get(i3);
                int size4 = requestMetadata2.getRequest().listeners.size();
                for (int i4 = 0; i4 < size4; i4++) {
                    ((Request.Listener) requestMetadata2.getRequest().listeners.get(i4)).onAborted(requestMetadata2.getRequest());
                }
            }
            Trace.endSection();
        }
        ((Camera2CaptureSequenceProcessor) this.raw).abortCaptures();
    }

    public void addAllCameraCaptureCallbacks(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            addCameraCaptureCallback((CameraCaptureCallback) it.next());
        }
    }

    public void addCameraCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
        ArrayList arrayList = (ArrayList) this.body;
        if (arrayList.contains(cameraCaptureCallback)) {
            return;
        }
        arrayList.add(cameraCaptureCallback);
    }

    public void addDestination$navigation_common_release(NavDestination navDestination) {
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.nameLowerCase;
        NavGraph navGraph = (NavGraph) this.raw;
        NavDestinationImpl navDestinationImpl = ((NavDestination) navGraph).impl;
        navDestination.getClass();
        NavDestinationImpl navDestinationImpl2 = navDestination.impl;
        int i = navDestinationImpl2.id;
        String str = (String) navDestinationImpl2.route;
        if (i == 0 && str == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
            return;
        }
        String str2 = (String) navDestinationImpl.route;
        if (str2 != null && Intrinsics.areEqual(str, str2)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Destination ", navDestination, " cannot have the same route as graph ", navGraph);
            return;
        }
        if (i == navDestinationImpl.id) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Destination ", navDestination, " cannot have the same id as graph ", navGraph);
            return;
        }
        NavDestination navDestination2 = (NavDestination) sparseArrayCompat.get(i);
        if (navDestination2 == navDestination) {
            return;
        }
        if (navDestination.parent != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
            return;
        }
        if (navDestination2 != null) {
            navDestination2.parent = null;
        }
        navDestination.parent = navGraph;
        sparseArrayCompat.put(navDestinationImpl2.id, navDestination);
    }

    public void addImplementationOptions(Config config) {
        for (AutoValue_Config_Option autoValue_Config_Option : config.listOptions()) {
            ((MutableOptionsBundle) this.name).retrieveOption(autoValue_Config_Option, null);
            ((MutableOptionsBundle) this.name).insertOption(autoValue_Config_Option, config.getOptionPriority(autoValue_Config_Option), config.retrieveOption(autoValue_Config_Option));
        }
    }

    public void addView(View view, int i, boolean z) {
        RecyclerView recyclerView = RecyclerView.this;
        int childCount = i < 0 ? recyclerView.getChildCount() : getOffset(i);
        ((HeadersReader) this.name).insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        recyclerView.addView(view, childCount);
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewAttachedToWindow(childViewHolderInt);
        }
        ArrayList arrayList = recyclerView.mOnChildAttachStateListeners;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((RecyclerView.OnChildAttachStateChangeListener) recyclerView.mOnChildAttachStateListeners.get(size)).onChildViewAttachedToWindow(view);
            }
        }
    }

    public void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        RecyclerView recyclerView = RecyclerView.this;
        int childCount = i < 0 ? recyclerView.getChildCount() : getOffset(i);
        ((HeadersReader) this.name).insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                Regex$$ExternalSyntheticBUOutline0.m(recyclerView.exceptionLabel(), sb);
                return;
            } else {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "reAttach " + childViewHolderInt);
                }
                childViewHolderInt.mFlags &= -257;
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            String exceptionLabel = recyclerView.exceptionLabel();
            sb2.append(", index: ");
            sb2.append(childCount);
            sb2.append(exceptionLabel);
            throw new IllegalArgumentException(sb2.toString());
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public CaptureConfig build() {
        ArrayList arrayList = new ArrayList((HashSet) this.raw);
        OptionsBundle from = OptionsBundle.from((MutableOptionsBundle) this.name);
        int i = this.delimiterIdx;
        ArrayList arrayList2 = new ArrayList((ArrayList) this.body);
        MutableTagBundle mutableTagBundle = (MutableTagBundle) this.nameLowerCase;
        TagBundle tagBundle = TagBundle.EMPTY_TAGBUNDLE;
        ArrayMap arrayMap = new ArrayMap();
        for (String str : mutableTagBundle.mTagMap.keySet()) {
            arrayMap.put(str, mutableTagBundle.mTagMap.get(str));
        }
        return new CaptureConfig(arrayList, from, i, arrayList2, new TagBundle(arrayMap));
    }

    public SpannedString createRecipientList(List list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        CollectionsKt.joinTo$default(list, spannableStringBuilder, ", ", (String) this.body, (String) this.nameLowerCase, null, 112);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    public void detachViewFromParent(int i) {
        int offset = getOffset(i);
        ((HeadersReader) this.name).remove(offset);
        RecyclerView recyclerView = RecyclerView.this;
        View childAt = recyclerView.getChildAt(offset);
        if (childAt != null) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    Regex$$ExternalSyntheticBUOutline0.m(recyclerView.exceptionLabel(), sb);
                    return;
                } else {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "tmpDetach " + childViewHolderInt);
                    }
                    childViewHolderInt.addFlags(256);
                }
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            throw new IllegalArgumentException("No view at offset " + offset + recyclerView.exceptionLabel());
        }
        recyclerView.detachViewFromParent(offset);
    }

    public NavDestination findNode$navigation_common_release(String str, boolean z) {
        Object obj;
        NavGraph navGraph;
        str.getClass();
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.nameLowerCase;
        sparseArrayCompat.getClass();
        Iterator it = ((ConstrainedOnceSequence) SequencesKt.asSequence(new UIntArray.Iterator(1, sparseArrayCompat))).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            NavDestination navDestination = (NavDestination) obj;
            if (StringsKt__StringsJVMKt.equals((String) navDestination.impl.route, str, false) || navDestination.impl.matchRoute$navigation_common_release(str) != null) {
                break;
            }
        }
        NavDestination navDestination2 = (NavDestination) obj;
        if (navDestination2 != null) {
            return navDestination2;
        }
        if (!z || (navGraph = ((NavGraph) this.raw).parent) == null) {
            return null;
        }
        RawField rawField = navGraph.impl;
        rawField.getClass();
        if (StringsKt.isBlank(str)) {
            return null;
        }
        return rawField.findNode$navigation_common_release(str, true);
    }

    public NavDestination findNodeComprehensive$navigation_common_release(int i, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        NavGraph navGraph = (NavGraph) this.raw;
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.nameLowerCase;
        NavDestination navDestination3 = (NavDestination) sparseArrayCompat.get(i);
        if (navDestination2 != null) {
            if (Intrinsics.areEqual(navDestination3, navDestination2) && Intrinsics.areEqual(navDestination3.parent, navDestination2.parent)) {
                return navDestination3;
            }
            navDestination3 = null;
        } else if (navDestination3 != null) {
            return navDestination3;
        }
        if (z) {
            Iterator it = ((ConstrainedOnceSequence) SequencesKt.asSequence(new UIntArray.Iterator(1, sparseArrayCompat))).iterator();
            while (true) {
                if (!it.hasNext()) {
                    navDestination3 = null;
                    break;
                }
                NavDestination navDestination4 = (NavDestination) it.next();
                navDestination3 = (!(navDestination4 instanceof NavGraph) || navDestination4.equals(navDestination)) ? null : ((NavGraph) navDestination4).impl.findNodeComprehensive$navigation_common_release(i, navGraph, navDestination2, true);
                if (navDestination3 != null) {
                    break;
                }
            }
        }
        if (navDestination3 != null) {
            return navDestination3;
        }
        NavGraph navGraph2 = navGraph.parent;
        if (navGraph2 == null || navGraph2.equals(navDestination)) {
            return null;
        }
        NavGraph navGraph3 = navGraph.parent;
        navGraph3.getClass();
        return navGraph3.impl.findNodeComprehensive$navigation_common_release(i, navGraph, navDestination2, z);
    }

    @Override // org.apache.james.mime4j.stream.Field
    public String getBody() {
        String sb;
        ByteSequence byteSequence = (ByteSequence) this.raw;
        String str = (String) this.body;
        if (str != null) {
            return str;
        }
        if (byteSequence == null) {
            return null;
        }
        int length = byteSequence.length();
        int i = this.delimiterIdx;
        int i2 = i + 1;
        int i3 = i + 2;
        if (length > i3 && Cookie.Companion.isWhitespace((char) (byteSequence.byteAt(i2) & 255))) {
            i2 = i3;
        }
        int i4 = length - i2;
        Charset charset = StandardCharsets.UTF_8;
        int i5 = ContentUtil.$r8$clinit;
        StringBuilder sb2 = new StringBuilder(i4);
        int i6 = i2;
        while (true) {
            if (i6 >= i2 + i4) {
                sb = sb2.toString();
                break;
            }
            char byteAt = (char) (byteSequence.byteAt(i6) & 255);
            if ((65408 & byteAt) != 0) {
                sb = ContentUtil.decode(byteSequence, i2, i4);
                break;
            }
            sb2.append(byteAt);
            i6++;
        }
        int i7 = MimeUtil.$r8$clinit;
        int length2 = sb.length();
        int i8 = 0;
        while (i8 < length2) {
            char charAt = sb.charAt(i8);
            if (charAt == '\r' || charAt == '\n') {
                int length3 = sb.length();
                StringBuilder sb3 = new StringBuilder(length3);
                if (i8 > 0) {
                    sb3.append((CharSequence) sb, 0, i8);
                }
                for (int i9 = i8 + 1; i9 < length3; i9++) {
                    char charAt2 = sb.charAt(i9);
                    if (charAt2 == '\r' || charAt2 == '\n') {
                        int i10 = i8 + 1;
                        if (i9 > i10) {
                            sb3.append((CharSequence) sb, i10, i9);
                        }
                        i8 = i9;
                    }
                }
                if (i8 < sb.length() - 1 && sb.length() > 0) {
                    sb3.append((CharSequence) sb, i8 + 1, sb.length());
                }
                return sb3.toString();
            }
            i8++;
        }
        return sb;
    }

    public View getChildAt(int i) {
        return RecyclerView.this.getChildAt(getOffset(i));
    }

    public int getChildCount() {
        return RecyclerView.this.getChildCount() - ((ArrayList) this.body).size();
    }

    @Override // org.apache.james.mime4j.stream.Field
    public String getName() {
        return (String) this.name;
    }

    @Override // org.apache.james.mime4j.stream.Field
    public String getNameLowerCase() {
        if (((String) this.nameLowerCase) == null) {
            this.nameLowerCase = ((String) this.name).toLowerCase(Locale.US);
        }
        return (String) this.nameLowerCase;
    }

    public int getOffset(int i) {
        HeadersReader headersReader = (HeadersReader) this.name;
        if (i < 0) {
            return -1;
        }
        int childCount = RecyclerView.this.getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            int countOnesBefore = i - (i2 - headersReader.countOnesBefore(i2));
            if (countOnesBefore == 0) {
                while (headersReader.get(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += countOnesBefore;
        }
        return -1;
    }

    @Override // org.apache.james.mime4j.stream.Field
    public ByteSequence getRaw() {
        return (ByteSequence) this.raw;
    }

    public View getUnfilteredChildAt(int i) {
        return RecyclerView.this.getChildAt(i);
    }

    public int getUnfilteredChildCount() {
        return RecyclerView.this.getChildCount();
    }

    public void hideViewInternal(View view) {
        ((ArrayList) this.body).add(view);
        RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.raw;
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            View view2 = childViewHolderInt.itemView;
            RecyclerView recyclerView = RecyclerView.this;
            int i = childViewHolderInt.mPendingAccessibilityState;
            if (i != -1) {
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = view2.getImportantForAccessibility();
            }
            if (!recyclerView.isComputingLayout()) {
                view2.setImportantForAccessibility(4);
            } else {
                childViewHolderInt.mPendingAccessibilityState = 4;
                recyclerView.mPendingAccessibilityImportanceChange.add(childViewHolderInt);
            }
        }
    }

    public NavDestination.DeepLinkMatch matchDeepLinkComprehensive$navigation_common_release(NavDestination.DeepLinkMatch deepLinkMatch, ImapSync imapSync, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch2;
        NavGraph navGraph = (NavGraph) this.raw;
        ArrayList arrayList = new ArrayList();
        Iterator it = navGraph.iterator();
        while (true) {
            NavGraphImpl$iterator$1 navGraphImpl$iterator$1 = (NavGraphImpl$iterator$1) it;
            if (!navGraphImpl$iterator$1.hasNext()) {
                break;
            }
            NavDestination navDestination2 = (NavDestination) navGraphImpl$iterator$1.next();
            deepLinkMatch2 = Intrinsics.areEqual(navDestination2, navDestination) ? null : navDestination2.matchDeepLink(imapSync);
            if (deepLinkMatch2 != null) {
                arrayList.add(deepLinkMatch2);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch3 = (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(arrayList);
        NavGraph navGraph2 = navGraph.parent;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatch2 = navGraph2.matchDeepLinkComprehensive(imapSync, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(ArraysKt___ArraysKt.filterNotNull(new NavDestination.DeepLinkMatch[]{deepLinkMatch, deepLinkMatch3, deepLinkMatch2}));
    }

    public void removeViewAt(int i) {
        RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.raw;
        int i2 = this.delimiterIdx;
        if (i2 == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot call removeView(At) within removeView(At)");
            return;
        }
        if (i2 == 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot call removeView(At) within removeViewIfHidden");
            return;
        }
        try {
            int offset = getOffset(i);
            View childAt = RecyclerView.this.getChildAt(offset);
            if (childAt == null) {
                this.delimiterIdx = 0;
                this.nameLowerCase = null;
                return;
            }
            this.delimiterIdx = 1;
            this.nameLowerCase = childAt;
            if (((HeadersReader) this.name).remove(offset)) {
                unhideViewInternal(childAt);
            }
            anonymousClass4.removeViewAt(offset);
            this.delimiterIdx = 0;
            this.nameLowerCase = null;
        } catch (Throwable th) {
            this.delimiterIdx = 0;
            this.nameLowerCase = null;
            throw th;
        }
    }

    public void setStartDestinationId$navigation_common_release(int i) {
        NavGraph navGraph = (NavGraph) this.raw;
        if (i == ((NavDestination) navGraph).impl.id) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Start destination ", i, " cannot use the same id as the graph ", navGraph);
            return;
        }
        if (((String) this.body) != null) {
            setStartDestinationRoute$navigation_common_release(null);
        }
        this.delimiterIdx = i;
        this.name = null;
    }

    public void setStartDestinationRoute$navigation_common_release(String str) {
        int hashCode;
        NavGraph navGraph = (NavGraph) this.raw;
        if (str == null) {
            hashCode = 0;
        } else if (str.equals((String) ((NavDestination) navGraph).impl.route)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Start destination ", str, " cannot use the same route as the graph ", navGraph);
            return;
        } else if (StringsKt.isBlank(str)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot have an empty start destination route");
            return;
        } else {
            int i = NavDestination.$r8$clinit;
            hashCode = "android-app://androidx.navigation/".concat(str).hashCode();
        }
        this.delimiterIdx = hashCode;
        this.body = str;
    }

    public Unit shutdown$camera_camera2_pipe() {
        Log.d("CXCP", "Closing " + this);
        boolean compareAndSet = ((AtomicBoolean) this.name).compareAndSet();
        Unit unit = Unit.INSTANCE;
        if (compareAndSet) {
            ((Camera2CaptureSequenceProcessor) this.raw).disconnect$camera_camera2_pipe();
        }
        return unit;
    }

    public void stopRepeating$camera_camera2_pipe() {
        Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor = (Camera2CaptureSequenceProcessor) this.raw;
        synchronized (camera2CaptureSequenceProcessor.lock) {
            Log.d("CXCP", camera2CaptureSequenceProcessor + "#stopRepeating");
            camera2CaptureSequenceProcessor.session.stopRepeating();
        }
    }

    public boolean submit$camera_camera2_pipe(boolean z, List list, Map map, Map map2, Map map3, List list2) {
        Throwable th;
        boolean z2;
        boolean z3;
        map.getClass();
        map2.getClass();
        map3.getClass();
        list2.getClass();
        if (((AtomicBoolean) this.name).getValue()) {
            Log.w("CXCP", "Failed to submit " + list + ": " + this + " is closed.");
            return false;
        }
        try {
            Trace.beginSection("CXCP#buildCaptureSequence");
            Camera2CaptureSequence build$1 = ((Camera2CaptureSequenceProcessor) this.raw).build$1(z, list, map, map2, map3, (BiometricPrompt) this.nameLowerCase, list2);
            if (build$1 == null) {
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((Request) it.next()).getClass();
                    }
                }
                Log.w("CXCP", "Failed to submit " + list + ": " + this + " failed to build CaptureSequence.");
                return false;
            }
            if (((AtomicBoolean) this.name).getValue()) {
                Log.w("CXCP", "Failed to submit " + list + ": " + this + " is closed.");
                return false;
            }
            if (!build$1.repeating) {
                synchronized (((ArrayList) this.body)) {
                    ((ArrayList) this.body).add(build$1);
                }
            }
            try {
                Log.d("CXCP", this + " submitting " + build$1);
                Trace.beginSection("InvokeInternalListeners");
                int size = build$1.captureMetadataList.size();
                for (int i = 0; i < size; i++) {
                    RequestMetadata requestMetadata = (RequestMetadata) build$1.captureMetadataList.get(i);
                    int size2 = build$1.listeners.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((Request.Listener) build$1.listeners.get(i2)).onRequestSequenceCreated(requestMetadata);
                    }
                }
                Trace.endSection();
                Trace.beginSection("InvokeRequestListeners");
                int size3 = build$1.captureMetadataList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    RequestMetadata requestMetadata2 = (RequestMetadata) build$1.captureMetadataList.get(i3);
                    int size4 = requestMetadata2.getRequest().listeners.size();
                    for (int i4 = 0; i4 < size4; i4++) {
                        ((Request.Listener) requestMetadata2.getRequest().listeners.get(i4)).onRequestSequenceCreated(requestMetadata2);
                    }
                }
            } catch (CameraAccessException unused) {
                if (!build$1.repeating) {
                    synchronized (((ArrayList) this.body)) {
                        ((ArrayList) this.body).remove(build$1);
                        Trace.beginSection("InvokeInternalListeners");
                        int size5 = build$1.captureMetadataList.size();
                        for (int i5 = 0; i5 < size5; i5++) {
                            RequestMetadata requestMetadata3 = (RequestMetadata) build$1.captureMetadataList.get(i5);
                            int size6 = build$1.listeners.size();
                            for (int i6 = 0; i6 < size6; i6++) {
                                ((Request.Listener) build$1.listeners.get(i6)).onAborted(requestMetadata3.getRequest());
                            }
                        }
                        Trace.endSection();
                        Trace.beginSection("InvokeRequestListeners");
                        int size7 = build$1.captureMetadataList.size();
                        for (int i7 = 0; i7 < size7; i7++) {
                            RequestMetadata requestMetadata4 = (RequestMetadata) build$1.captureMetadataList.get(i7);
                            int size8 = requestMetadata4.getRequest().listeners.size();
                            for (int i8 = 0; i8 < size8; i8++) {
                                ((Request.Listener) requestMetadata4.getRequest().listeners.get(i8)).onAborted(requestMetadata4.getRequest());
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                z2 = false;
            }
            synchronized (build$1) {
                if (!((AtomicBoolean) this.name).getValue()) {
                    try {
                        Trace.beginSection("CXCP#submit(CaptureSequence)");
                        Integer submit$1 = ((Camera2CaptureSequenceProcessor) this.raw).submit$1(build$1);
                        int intValue = submit$1 != null ? submit$1.intValue() : -1;
                        build$1._sequenceNumber = Integer.valueOf(intValue);
                        if (intValue != -1) {
                            Trace.beginSection("InvokeInternalListeners");
                            int size9 = build$1.captureMetadataList.size();
                            for (int i9 = 0; i9 < size9; i9++) {
                                RequestMetadata requestMetadata5 = (RequestMetadata) build$1.captureMetadataList.get(i9);
                                int size10 = build$1.listeners.size();
                                for (int i10 = 0; i10 < size10; i10++) {
                                    ((Request.Listener) build$1.listeners.get(i10)).onRequestSequenceSubmitted(requestMetadata5);
                                }
                            }
                            Trace.endSection();
                            Trace.beginSection("InvokeRequestListeners");
                            int size11 = build$1.captureMetadataList.size();
                            for (int i11 = 0; i11 < size11; i11++) {
                                RequestMetadata requestMetadata6 = (RequestMetadata) build$1.captureMetadataList.get(i11);
                                int size12 = requestMetadata6.getRequest().listeners.size();
                                for (int i12 = 0; i12 < size12; i12++) {
                                    ((Request.Listener) requestMetadata6.getRequest().listeners.get(i12)).onRequestSequenceSubmitted(requestMetadata6);
                                }
                            }
                            z3 = true;
                            try {
                                Log.d("CXCP", this + " submitted " + build$1);
                            } catch (CameraAccessException unused2) {
                            } catch (Throwable th3) {
                                z2 = true;
                                th = th3;
                                if (z2) {
                                    throw th;
                                }
                                if (build$1.repeating) {
                                    throw th;
                                }
                                synchronized (((ArrayList) this.body)) {
                                    ((ArrayList) this.body).remove(build$1);
                                }
                                Trace.beginSection("InvokeInternalListeners");
                                int size13 = build$1.captureMetadataList.size();
                                for (int i13 = 0; i13 < size13; i13++) {
                                    RequestMetadata requestMetadata7 = (RequestMetadata) build$1.captureMetadataList.get(i13);
                                    int size14 = build$1.listeners.size();
                                    for (int i14 = 0; i14 < size14; i14++) {
                                        ((Request.Listener) build$1.listeners.get(i14)).onAborted(requestMetadata7.getRequest());
                                    }
                                }
                                Trace.endSection();
                                Trace.beginSection("InvokeRequestListeners");
                                int size15 = build$1.captureMetadataList.size();
                                for (int i15 = 0; i15 < size15; i15++) {
                                    RequestMetadata requestMetadata8 = (RequestMetadata) build$1.captureMetadataList.get(i15);
                                    int size16 = requestMetadata8.getRequest().listeners.size();
                                    for (int i16 = 0; i16 < size16; i16++) {
                                        ((Request.Listener) requestMetadata8.getRequest().listeners.get(i16)).onAborted(requestMetadata8.getRequest());
                                    }
                                }
                                throw th;
                            }
                        } else {
                            Log.w("CXCP", "Failed to submit " + build$1 + ": " + this + " received -1 from submit.");
                            z3 = false;
                        }
                        if (z3 || build$1.repeating) {
                            return z3;
                        }
                        synchronized (((ArrayList) this.body)) {
                            ((ArrayList) this.body).remove(build$1);
                        }
                        Trace.beginSection("InvokeInternalListeners");
                        int size17 = build$1.captureMetadataList.size();
                        for (int i17 = 0; i17 < size17; i17++) {
                            RequestMetadata requestMetadata9 = (RequestMetadata) build$1.captureMetadataList.get(i17);
                            int size18 = build$1.listeners.size();
                            for (int i18 = 0; i18 < size18; i18++) {
                                ((Request.Listener) build$1.listeners.get(i18)).onAborted(requestMetadata9.getRequest());
                            }
                        }
                        Trace.endSection();
                        Trace.beginSection("InvokeRequestListeners");
                        int size19 = build$1.captureMetadataList.size();
                        for (int i19 = 0; i19 < size19; i19++) {
                            RequestMetadata requestMetadata10 = (RequestMetadata) build$1.captureMetadataList.get(i19);
                            int size20 = requestMetadata10.getRequest().listeners.size();
                            for (int i20 = 0; i20 < size20; i20++) {
                                ((Request.Listener) requestMetadata10.getRequest().listeners.get(i20)).onAborted(requestMetadata10.getRequest());
                            }
                        }
                        return z3;
                    } finally {
                    }
                }
                Log.w("CXCP", "Failed to submit " + build$1 + ": " + this + " is closed.");
                if (!build$1.repeating) {
                    synchronized (((ArrayList) this.body)) {
                        ((ArrayList) this.body).remove(build$1);
                    }
                    Trace.beginSection("InvokeInternalListeners");
                    int size21 = build$1.captureMetadataList.size();
                    for (int i21 = 0; i21 < size21; i21++) {
                        RequestMetadata requestMetadata11 = (RequestMetadata) build$1.captureMetadataList.get(i21);
                        int size22 = build$1.listeners.size();
                        for (int i22 = 0; i22 < size22; i22++) {
                            ((Request.Listener) build$1.listeners.get(i22)).onAborted(requestMetadata11.getRequest());
                        }
                    }
                    Trace.endSection();
                    Trace.beginSection("InvokeRequestListeners");
                    int size23 = build$1.captureMetadataList.size();
                    for (int i23 = 0; i23 < size23; i23++) {
                        RequestMetadata requestMetadata12 = (RequestMetadata) build$1.captureMetadataList.get(i23);
                        int size24 = requestMetadata12.getRequest().listeners.size();
                        for (int i24 = 0; i24 < size24; i24++) {
                            ((Request.Listener) requestMetadata12.getRequest().listeners.get(i24)).onAborted(requestMetadata12.getRequest());
                        }
                    }
                    return false;
                }
                return false;
            }
        } finally {
            Trace.endSection();
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                ByteSequence byteSequence = (ByteSequence) this.raw;
                if (byteSequence != null) {
                    return ContentUtil.decode(byteSequence);
                }
                StringBuilder sb = new StringBuilder();
                sb.append((String) this.name);
                sb.append(": ");
                String str = (String) this.body;
                if (str != null) {
                    sb.append(str);
                }
                return sb.toString();
            case 1:
                return "GraphRequestProcessor-" + this.delimiterIdx;
            case 2:
            case 3:
            default:
                return super.toString();
            case 4:
                return ((HeadersReader) this.name).toString() + ", hidden list:" + ((ArrayList) this.body).size();
        }
    }

    public void unhideViewInternal(View view) {
        if (((ArrayList) this.body).remove(view)) {
            RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.raw;
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                RecyclerView recyclerView = RecyclerView.this;
                int i = childViewHolderInt.mWasImportantForAccessibilityBeforeHidden;
                if (recyclerView.isComputingLayout()) {
                    childViewHolderInt.mPendingAccessibilityState = i;
                    recyclerView.mPendingAccessibilityImportanceChange.add(childViewHolderInt);
                } else {
                    childViewHolderInt.itemView.setImportantForAccessibility(i);
                }
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = 0;
            }
        }
    }

    public RawField(NavGraph navGraph) {
        this.$r8$classId = 3;
        this.raw = navGraph;
        this.nameLowerCase = new SparseArrayCompat(0);
    }

    public RawField(ConnectionPool connectionPool, String str, int i, String str2) {
        this.$r8$classId = 5;
        this.raw = connectionPool;
        this.delimiterIdx = i;
        this.name = str2;
        if (StringsKt.contains(str, "%s", false)) {
            this.body = StringsKt.substringBefore$default(str, "%s");
            this.nameLowerCase = StringsKt.substringAfter$default(str, "%s");
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("recipientFormat must contain '%s'");
            throw null;
        }
    }

    public RawField(ByteSequence byteSequence, int i, String str, String str2) {
        this.$r8$classId = 0;
        if (str != null) {
            this.raw = byteSequence;
            this.delimiterIdx = i;
            this.name = str.trim();
            this.body = str2;
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Field may not be null");
        throw null;
    }

    public RawField(RecyclerView.AnonymousClass4 anonymousClass4) {
        this.$r8$classId = 4;
        this.delimiterIdx = 0;
        this.raw = anonymousClass4;
        this.name = new HeadersReader();
        this.body = new ArrayList();
    }

    public RawField() {
        this.$r8$classId = 2;
        this.raw = new HashSet();
        this.name = MutableOptionsBundle.create();
        this.delimiterIdx = -1;
        this.body = new ArrayList();
        this.nameLowerCase = MutableTagBundle.create();
    }

    public NavDestination findNode$navigation_common_release(int i) {
        return findNodeComprehensive$navigation_common_release(i, (NavGraph) this.raw, null, false);
    }
}
