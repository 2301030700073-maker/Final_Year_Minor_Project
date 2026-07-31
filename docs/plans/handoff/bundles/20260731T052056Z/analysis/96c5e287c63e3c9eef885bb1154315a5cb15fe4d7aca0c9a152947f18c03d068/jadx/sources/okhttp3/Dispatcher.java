package okhttp3;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider$Bucket;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompatBuilder$Api24Impl;
import androidx.core.app.NotificationCompatBuilder$Api31Impl;
import androidx.core.app.NotificationCompatBuilder$Api37Impl;
import androidx.core.app.Person;
import androidx.core.app.RemoteInput;
import androidx.core.graphics.drawable.IconCompat;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$size$3$1;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVG;
import com.google.android.flexbox.FlexboxHelper$FlexLinesResult;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.InterruptedIOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.UIntArray;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.sequences.ConstrainedOnceSequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http1.HeadersReader;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Dispatcher implements TypeParameterResolver {
    public final /* synthetic */ int $r8$classId;
    public Object executorServiceOrNull;
    public int maxRequestsPerHost;
    public final Object readyAsyncCalls;
    public Object runningAsyncCalls;
    public Object runningSyncCalls;

    /* JADX WARN: Removed duplicated region for block: B:154:0x04b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Dispatcher(androidx.core.app.NotificationCompat$Builder r27) {
        /*
            Method dump skipped, instructions count: 1302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Dispatcher.<init>(androidx.core.app.NotificationCompat$Builder):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void promoteAndExecute$default(Dispatcher dispatcher, RealCall.AsyncCall asyncCall, RealCall realCall, RealCall.AsyncCall asyncCall2, int i) {
        int i2;
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects;
        if ((i & 1) != 0) {
            asyncCall = null;
        }
        if ((i & 2) != 0) {
            realCall = null;
        }
        if ((i & 4) != 0) {
            asyncCall2 = null;
        }
        dispatcher.getClass();
        TimeZone timeZone = _UtilJvmKt.UTC;
        boolean isShutdown = dispatcher.executorService().isShutdown();
        synchronized (dispatcher) {
            if (realCall != null) {
                try {
                    if (!((ArrayDeque) dispatcher.runningSyncCalls).remove(realCall)) {
                        throw new IllegalStateException("Call wasn't in-flight!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (asyncCall2 != null) {
                asyncCall2.callsPerHost.decrementAndGet();
                if (!((ArrayDeque) dispatcher.runningAsyncCalls).remove(asyncCall2)) {
                    throw new IllegalStateException("Call wasn't in-flight!");
                }
            }
            if (asyncCall != null) {
                ((ArrayDeque) dispatcher.readyAsyncCalls).add(asyncCall);
                RealCall.AsyncCall findExistingCallWithHost = dispatcher.findExistingCallWithHost(RealCall.this.originalRequest.url.host);
                if (findExistingCallWithHost != null) {
                    asyncCall.callsPerHost = findExistingCallWithHost.callsPerHost;
                }
            }
            if ((realCall != null || asyncCall2 != null) && (isShutdown || ((ArrayDeque) dispatcher.runningAsyncCalls).isEmpty())) {
                ((ArrayDeque) dispatcher.runningSyncCalls).isEmpty();
            }
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (isShutdown) {
                List list = CollectionsKt.toList((ArrayDeque) dispatcher.readyAsyncCalls);
                ((ArrayDeque) dispatcher.readyAsyncCalls).clear();
                dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(list, objArr2 == true ? 1 : 0);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((ArrayDeque) dispatcher.readyAsyncCalls).iterator();
                it.getClass();
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall3 = (RealCall.AsyncCall) it.next();
                    if (((ArrayDeque) dispatcher.runningAsyncCalls).size() >= 64) {
                        break;
                    }
                    if (asyncCall3.callsPerHost.get() < dispatcher.maxRequestsPerHost) {
                        it.remove();
                        asyncCall3.callsPerHost.incrementAndGet();
                        arrayList.add(asyncCall3);
                        ((ArrayDeque) dispatcher.runningAsyncCalls).add(asyncCall3);
                    }
                }
                dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(arrayList, objArr == true ? 1 : 0);
            }
        }
        int size = dispatcher$promoteAndExecute$Effects.callsToExecute.size();
        for (i2 = 0; i2 < size; i2++) {
            RealCall.AsyncCall asyncCall4 = (RealCall.AsyncCall) dispatcher$promoteAndExecute$Effects.callsToExecute.get(i2);
            if (asyncCall4 != asyncCall) {
                RealCall realCall2 = RealCall.this;
            }
            if (isShutdown) {
                asyncCall4.getClass();
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(null);
                RealCall realCall3 = RealCall.this;
                realCall3.noMoreExchanges$okhttp(interruptedIOException);
                asyncCall4.responseCallback.onFailure(realCall3, interruptedIOException);
            } else {
                ExecutorService executorService = dispatcher.executorService();
                asyncCall4.getClass();
                RealCall realCall4 = RealCall.this;
                realCall4.client.dispatcher.getClass();
                try {
                    try {
                        executorService.execute(asyncCall4);
                    } catch (RejectedExecutionException e) {
                        InterruptedIOException interruptedIOException2 = new InterruptedIOException("executor rejected");
                        interruptedIOException2.initCause(e);
                        RealCall realCall5 = RealCall.this;
                        realCall5.noMoreExchanges$okhttp(interruptedIOException2);
                        asyncCall4.responseCallback.onFailure(realCall5, interruptedIOException2);
                        Dispatcher dispatcher2 = realCall4.client.dispatcher;
                        dispatcher2.getClass();
                        promoteAndExecute$default(dispatcher2, null, null, asyncCall4, 3);
                    }
                } catch (Throwable th2) {
                    Dispatcher dispatcher3 = realCall4.client.dispatcher;
                    dispatcher3.getClass();
                    promoteAndExecute$default(dispatcher3, null, null, asyncCall4, 3);
                    throw th2;
                }
            }
        }
    }

    public static void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    public void addAction(NotificationCompat$Action notificationCompat$Action) {
        IconCompat iconCompat = notificationCompat$Action.getIconCompat();
        int i = notificationCompat$Action.mSemanticAction;
        boolean z = notificationCompat$Action.mAllowGeneratedReplies;
        Bundle bundle = notificationCompat$Action.mExtras;
        Notification.Action.Builder builder = new Notification.Action.Builder(iconCompat != null ? UtilsKt.toIcon(iconCompat, null) : null, notificationCompat$Action.title, notificationCompat$Action.actionIntent);
        RemoteInput[] remoteInputArr = notificationCompat$Action.mRemoteInputs;
        if (remoteInputArr != null) {
            android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
            for (int i2 = 0; i2 < remoteInputArr.length; i2++) {
                RemoteInput remoteInput = remoteInputArr[i2];
                RemoteInput.Builder addExtras = new RemoteInput.Builder(remoteInput.mResultKey).setLabel(remoteInput.mLabel).setChoices(remoteInput.mChoices).setAllowFreeFormInput(remoteInput.mAllowFreeFormTextInput).addExtras(remoteInput.mExtras);
                if (Build.VERSION.SDK_INT >= 26) {
                    Iterator it = remoteInput.mAllowedDataTypes.iterator();
                    while (it.hasNext()) {
                        RemoteInput.Api26Impl.setAllowDataType(addExtras, (String) it.next());
                    }
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    RemoteInput.Api29Impl.setEditChoicesBeforeSending(addExtras, remoteInput.mEditChoicesBeforeSending);
                }
                remoteInputArr2[i2] = addExtras.build();
            }
            for (android.app.RemoteInput remoteInput2 : remoteInputArr2) {
                builder.addRemoteInput(remoteInput2);
            }
        }
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putBoolean("android.support.allowGeneratedReplies", z);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 24) {
            NotificationCompatBuilder$Api24Impl.setAllowGeneratedReplies(builder, z);
        }
        bundle2.putInt("android.support.action.semanticAction", i);
        if (i3 >= 28) {
            Person.Api28Impl.setSemanticAction(builder, i);
        }
        if (i3 >= 29) {
            RemoteInput.Api29Impl.setContextual(builder, notificationCompat$Action.mIsContextual);
        }
        if (i3 >= 31) {
            NotificationCompatBuilder$Api31Impl.setAuthenticationRequired(builder, notificationCompat$Action.mAuthenticationRequired);
        }
        if (i3 >= 37) {
            NotificationCompatBuilder$Api37Impl.setEmphasisHint(builder, notificationCompat$Action.mEmphasisHint);
            NotificationCompatBuilder$Api37Impl.setStyleHint(builder, notificationCompat$Action.mStyleHint);
        }
        bundle2.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.mShowsUserInterface);
        builder.addExtras(bundle2);
        ((Notification.Builder) this.readyAsyncCalls).addAction(builder.build());
    }

    public void addView(View view, int i, boolean z) {
        RecyclerView recyclerView = ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0;
        int childCount = i < 0 ? recyclerView.getChildCount() : getOffset(i);
        ((HeadersReader) this.readyAsyncCalls).insert(childCount, z);
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
        RecyclerView recyclerView = ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0;
        int childCount = i < 0 ? recyclerView.getChildCount() : getOffset(i);
        ((HeadersReader) this.readyAsyncCalls).insert(childCount, z);
        if (z) {
            hideViewInternal(view);
        }
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                Gson$$ExternalSyntheticBUOutline0.m$1(sb, recyclerView.exceptionLabel());
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

    public void detachViewFromParent(int i) {
        int offset = getOffset(i);
        ((HeadersReader) this.readyAsyncCalls).remove(offset);
        RecyclerView recyclerView = ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0;
        View childAt = recyclerView.getChildAt(offset);
        if (childAt != null) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    Gson$$ExternalSyntheticBUOutline0.m$1(sb, recyclerView.exceptionLabel());
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

    public synchronized ExecutorService executorService() {
        ThreadPoolExecutor threadPoolExecutor;
        threadPoolExecutor = (ThreadPoolExecutor) this.executorServiceOrNull;
        if (threadPoolExecutor == null) {
            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new _UtilJvmKt$$ExternalSyntheticLambda1(_UtilJvmKt.okHttpName + " Dispatcher", false));
            this.executorServiceOrNull = threadPoolExecutor2;
            threadPoolExecutor = threadPoolExecutor2;
        }
        return threadPoolExecutor;
    }

    public RealCall.AsyncCall findExistingCallWithHost(String str) {
        Iterator it = ((ArrayDeque) this.runningAsyncCalls).iterator();
        it.getClass();
        while (it.hasNext()) {
            RealCall.AsyncCall asyncCall = (RealCall.AsyncCall) it.next();
            if (Intrinsics.areEqual(RealCall.this.originalRequest.url.host, str)) {
                return asyncCall;
            }
        }
        Iterator it2 = ((ArrayDeque) this.readyAsyncCalls).iterator();
        it2.getClass();
        while (it2.hasNext()) {
            RealCall.AsyncCall asyncCall2 = (RealCall.AsyncCall) it2.next();
            if (Intrinsics.areEqual(RealCall.this.originalRequest.url.host, str)) {
                return asyncCall2;
            }
        }
        return null;
    }

    public NavDestination findNode$navigation_common_release(String str, boolean z) {
        Object obj;
        NavGraph navGraph;
        str.getClass();
        Iterator it = ((ConstrainedOnceSequence) SequencesKt.asSequence(new UIntArray.Iterator(1, (SparseArrayCompat) this.readyAsyncCalls))).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            NavDestination navDestination = (NavDestination) obj;
            if (StringsKt__StringsJVMKt.equals((String) navDestination.impl.layoutNodes, str, false) || navDestination.impl.matchRoute$navigation_common_release(str) != null) {
                break;
            }
        }
        NavDestination navDestination2 = (NavDestination) obj;
        if (navDestination2 != null) {
            return navDestination2;
        }
        if (!z || (navGraph = ((NavGraph) this.executorServiceOrNull).parent) == null) {
            return null;
        }
        Dispatcher dispatcher = navGraph.impl;
        dispatcher.getClass();
        if (StringsKt.isBlank(str)) {
            return null;
        }
        return dispatcher.findNode$navigation_common_release(str, true);
    }

    public NavDestination findNodeComprehensive$navigation_common_release(int i, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        NavGraph navGraph = (NavGraph) this.executorServiceOrNull;
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.readyAsyncCalls;
        NavDestination navDestination3 = (NavDestination) ArraySetKt.commonGet(sparseArrayCompat, i);
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

    public View getChildAt(int i) {
        return ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0.getChildAt(getOffset(i));
    }

    public int getChildCount() {
        return ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0.getChildCount() - ((ArrayList) this.runningAsyncCalls).size();
    }

    public FlexboxHelper$FlexLinesResult getLineConfiguration(int i) {
        List list;
        int i2 = this.maxRequestsPerHost;
        int i3 = i * i2;
        int totalSize = getTotalSize() - i3;
        if (i2 > totalSize) {
            i2 = totalSize;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 == ((List) this.runningSyncCalls).size()) {
            list = (List) this.runningSyncCalls;
        } else {
            ArrayList arrayList = new ArrayList(i2);
            for (int i4 = 0; i4 < i2; i4++) {
                arrayList.add(new GridItemSpan(1L));
            }
            this.runningSyncCalls = arrayList;
            list = arrayList;
        }
        FlexboxHelper$FlexLinesResult flexboxHelper$FlexLinesResult = new FlexboxHelper$FlexLinesResult();
        flexboxHelper$FlexLinesResult.mChildState = i3;
        flexboxHelper$FlexLinesResult.mFlexLines = list;
        return flexboxHelper$FlexLinesResult;
    }

    public int getLineIndexOfItem(int i) {
        if (getTotalSize() <= 0) {
            return 0;
        }
        if (i >= getTotalSize()) {
            InlineClassHelperKt.throwIllegalArgumentException("ItemIndex > total count");
        }
        return i / this.maxRequestsPerHost;
    }

    public int getOffset(int i) {
        HeadersReader headersReader = (HeadersReader) this.readyAsyncCalls;
        if (i < 0) {
            return -1;
        }
        int childCount = ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0.getChildCount();
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

    public int getTotalSize() {
        return ((LazyGridIntervalContent) this.executorServiceOrNull).intervals.code;
    }

    public View getUnfilteredChildAt(int i) {
        return ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0.getChildAt(i);
    }

    public int getUnfilteredChildCount() {
        return ((RecyclerView.AnonymousClass4) this.executorServiceOrNull).this$0.getChildCount();
    }

    public void hideViewInternal(View view) {
        ((ArrayList) this.runningAsyncCalls).add(view);
        RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.executorServiceOrNull;
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            View view2 = childViewHolderInt.itemView;
            RecyclerView recyclerView = anonymousClass4.this$0;
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

    public NavDestination.DeepLinkMatch matchDeepLinkComprehensive$navigation_common_release(NavDestination.DeepLinkMatch deepLinkMatch, SVG svg, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch2;
        NavGraph navGraph = (NavGraph) this.executorServiceOrNull;
        ArrayList arrayList = new ArrayList();
        Iterator it = navGraph.iterator();
        while (true) {
            NavGraphImpl$iterator$1 navGraphImpl$iterator$1 = (NavGraphImpl$iterator$1) it;
            if (!navGraphImpl$iterator$1.hasNext()) {
                break;
            }
            NavDestination navDestination2 = (NavDestination) navGraphImpl$iterator$1.next();
            deepLinkMatch2 = Intrinsics.areEqual(navDestination2, navDestination) ? null : navDestination2.matchDeepLink(svg);
            if (deepLinkMatch2 != null) {
                arrayList.add(deepLinkMatch2);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch3 = (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(arrayList);
        NavGraph navGraph2 = navGraph.parent;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatch2 = navGraph2.matchDeepLinkComprehensive(svg, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(ArraysKt___ArraysKt.filterNotNull(new NavDestination.DeepLinkMatch[]{deepLinkMatch, deepLinkMatch3, deepLinkMatch2}));
    }

    public void removeViewAt(int i) {
        RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.executorServiceOrNull;
        int i2 = this.maxRequestsPerHost;
        if (i2 == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot call removeView(At) within removeView(At)");
            return;
        }
        if (i2 == 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot call removeView(At) within removeViewIfHidden");
            return;
        }
        try {
            int offset = getOffset(i);
            View childAt = anonymousClass4.this$0.getChildAt(offset);
            if (childAt == null) {
                this.maxRequestsPerHost = 0;
                this.runningSyncCalls = null;
                return;
            }
            this.maxRequestsPerHost = 1;
            this.runningSyncCalls = childAt;
            if (((HeadersReader) this.readyAsyncCalls).remove(offset)) {
                unhideViewInternal(childAt);
            }
            anonymousClass4.removeViewAt(offset);
            this.maxRequestsPerHost = 0;
            this.runningSyncCalls = null;
        } catch (Throwable th) {
            this.maxRequestsPerHost = 0;
            this.runningSyncCalls = null;
            throw th;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver
    public TypeParameterDescriptor resolveTypeParameter(ReflectJavaTypeParameter reflectJavaTypeParameter) {
        reflectJavaTypeParameter.getClass();
        LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor = (LazyJavaTypeParameterDescriptor) ((ViewSizeResolver$size$3$1) this.runningSyncCalls).invoke(reflectJavaTypeParameter);
        return lazyJavaTypeParameterDescriptor != null ? lazyJavaTypeParameterDescriptor : ((TypeParameterResolver) ((Request.Builder) this.executorServiceOrNull).method).resolveTypeParameter(reflectJavaTypeParameter);
    }

    public void setStartDestinationRoute$navigation_common_release(String str) {
        int hashCode;
        NavGraph navGraph = (NavGraph) this.executorServiceOrNull;
        if (str == null) {
            hashCode = 0;
        } else if (str.equals((String) ((NavDestination) navGraph).impl.layoutNodes)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Start destination ", str, " cannot use the same route as the graph ", navGraph);
            return;
        } else if (StringsKt.isBlank(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot have an empty start destination route");
            return;
        } else {
            int i = NavDestination.$r8$clinit;
            hashCode = "android-app://androidx.navigation/".concat(str).hashCode();
        }
        this.maxRequestsPerHost = hashCode;
        this.runningSyncCalls = str;
    }

    public int spanOf(int i) {
        IntervalList$Interval intervalList$Interval = ((LazyGridIntervalContent) this.executorServiceOrNull).intervals.get(i);
        int i2 = i - intervalList$Interval.startIndex;
        return (int) ((GridItemSpan) ((LazyGridInterval) intervalList$Interval.value).span.invoke(LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl.INSTANCE, Integer.valueOf(i2))).packedValue;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 4:
                return ((HeadersReader) this.readyAsyncCalls).toString() + ", hidden list:" + ((ArrayList) this.runningAsyncCalls).size();
            default:
                return super.toString();
        }
    }

    public void unhideViewInternal(View view) {
        if (((ArrayList) this.runningAsyncCalls).remove(view)) {
            RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.executorServiceOrNull;
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                RecyclerView recyclerView = anonymousClass4.this$0;
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

    public NavDestination findNode$navigation_common_release(int i) {
        return findNodeComprehensive$navigation_common_release(i, (NavGraph) this.executorServiceOrNull, null, false);
    }

    public Dispatcher(Request.Builder builder, DeclarationDescriptor declarationDescriptor, JavaTypeParameterListOwner javaTypeParameterListOwner, int i) {
        this.$r8$classId = 5;
        builder.getClass();
        javaTypeParameterListOwner.getClass();
        this.executorServiceOrNull = builder;
        this.readyAsyncCalls = declarationDescriptor;
        this.maxRequestsPerHost = i;
        ArrayList typeParameters = javaTypeParameterListOwner.getTypeParameters();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = typeParameters.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            linkedHashMap.put(it.next(), Integer.valueOf(i2));
            i2++;
        }
        this.runningAsyncCalls = linkedHashMap;
        this.runningSyncCalls = ((LockBasedStorageManager) ((ActivityPageBinding) ((Request.Builder) this.executorServiceOrNull).url).rootView).createMemoizedFunctionWithNullableValues(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(10, this));
    }

    public Dispatcher(NavGraph navGraph) {
        this.$r8$classId = 3;
        this.executorServiceOrNull = navGraph;
        this.readyAsyncCalls = new SparseArrayCompat(0);
    }

    public Dispatcher() {
        this.$r8$classId = 0;
        this.maxRequestsPerHost = 5;
        this.readyAsyncCalls = new ArrayDeque();
        this.runningAsyncCalls = new ArrayDeque();
        this.runningSyncCalls = new ArrayDeque();
    }

    public Dispatcher(LazyGridIntervalContent lazyGridIntervalContent) {
        this.$r8$classId = 1;
        this.executorServiceOrNull = lazyGridIntervalContent;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new LazyGridSpanLayoutProvider$Bucket(0, 0));
        this.readyAsyncCalls = arrayList;
        this.runningAsyncCalls = new ArrayList();
        this.runningSyncCalls = EmptyList.INSTANCE;
    }

    public Dispatcher(RecyclerView.AnonymousClass4 anonymousClass4) {
        this.$r8$classId = 4;
        this.maxRequestsPerHost = 0;
        this.executorServiceOrNull = anonymousClass4;
        this.readyAsyncCalls = new HeadersReader();
        this.runningAsyncCalls = new ArrayList();
    }
}
