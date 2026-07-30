package com.facebook.appevents.codeless;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import com.facebook.appevents.codeless.CodelessLoggingEventListener;
import com.facebook.appevents.codeless.RCTCodelessLoggingEventListener;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ParameterComponent;
import com.facebook.appevents.codeless.internal.PathComponent;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.RunnableC2852h9;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class CodelessMatcher {
    private static final String CURRENT_CLASS_NAME = ".";
    private static final String PARENT_CLASS_NAME = "..";
    private static CodelessMatcher codelessMatcher;
    private final Set<Activity> activitiesSet;
    private final HashMap<Integer, HashSet<String>> activityToListenerMap;
    private HashSet<String> listenerSet;
    private final Handler uiThreadHandler;
    private final Set<ViewMatcher> viewMatchers;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = CodelessMatcher.class.getCanonicalName();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public final synchronized CodelessMatcher getInstance() {
            CodelessMatcher access$getCodelessMatcher$cp;
            if (CodelessMatcher.access$getCodelessMatcher$cp() == null) {
                CodelessMatcher.access$setCodelessMatcher$cp(new CodelessMatcher(null));
            }
            access$getCodelessMatcher$cp = CodelessMatcher.access$getCodelessMatcher$cp();
            if (access$getCodelessMatcher$cp == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher");
            }
            return access$getCodelessMatcher$cp;
        }

        public final Bundle getParameters(EventBinding eventBinding, View view, View view2) {
            C0173Do.m401try(view, "rootView");
            C0173Do.m401try(view2, "hostView");
            Bundle bundle = new Bundle();
            if (eventBinding == null) {
                return bundle;
            }
            List<ParameterComponent> viewParameters = eventBinding.getViewParameters();
            if (viewParameters != null) {
                for (ParameterComponent parameterComponent : viewParameters) {
                    if (parameterComponent.getValue() != null) {
                        if (parameterComponent.getValue().length() > 0) {
                            bundle.putString(parameterComponent.getName(), parameterComponent.getValue());
                        }
                    }
                    if (parameterComponent.getPath().size() > 0) {
                        Iterator<MatchedView> it = (C0173Do.m394do(parameterComponent.getPathType(), Constants.PATH_TYPE_RELATIVE) ? ViewMatcher.Companion.findViewByPath(eventBinding, view2, parameterComponent.getPath(), 0, -1, view2.getClass().getSimpleName()) : ViewMatcher.Companion.findViewByPath(eventBinding, view, parameterComponent.getPath(), 0, -1, view.getClass().getSimpleName())).iterator();
                        while (true) {
                            if (it.hasNext()) {
                                MatchedView next = it.next();
                                if (next.getView() != null) {
                                    ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                                    String textOfView = ViewHierarchy.getTextOfView(next.getView());
                                    if (textOfView.length() > 0) {
                                        bundle.putString(parameterComponent.getName(), textOfView);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return bundle;
        }
    }

    public static final class MatchedView {
        private final WeakReference<View> view;
        private final String viewMapKey;

        public MatchedView(View view, String str) {
            C0173Do.m401try(view, ViewHierarchyConstants.VIEW_KEY);
            C0173Do.m401try(str, "viewMapKey");
            this.view = new WeakReference<>(view);
            this.viewMapKey = str;
        }

        public final View getView() {
            WeakReference<View> weakReference = this.view;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        public final String getViewMapKey() {
            return this.viewMapKey;
        }
    }

    public static final class ViewMatcher implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {
        public static final Companion Companion = new Companion(null);
        private final String activityName;
        private List<EventBinding> eventBindings;
        private final Handler handler;
        private final HashSet<String> listenerSet;
        private final WeakReference<View> rootView;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(C2819gd c2819gd) {
                this();
            }

            private final List<View> findVisibleChildren(ViewGroup viewGroup) {
                ArrayList arrayList = new ArrayList();
                int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt.getVisibility() == 0) {
                            arrayList.add(childAt);
                        }
                        if (i2 >= childCount) {
                            break;
                        }
                        i = i2;
                    }
                }
                return arrayList;
            }

            /* JADX WARN: Code restructure failed: missing block: B:14:0x0070, code lost:
            
                if (defpackage.C0173Do.m394do(r6.getClass().getSimpleName(), (java.lang.String) r8.get(r8.size() - 1)) == false) goto L15;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private final boolean isTheSameView(android.view.View r6, com.facebook.appevents.codeless.internal.PathComponent r7, int r8) {
                /*
                    Method dump skipped, instructions count: 334
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessMatcher.ViewMatcher.Companion.isTheSameView(android.view.View, com.facebook.appevents.codeless.internal.PathComponent, int):boolean");
            }

            public final List<MatchedView> findViewByPath(EventBinding eventBinding, View view, List<PathComponent> list, int i, int i2, String str) {
                List<View> findVisibleChildren;
                int size;
                List<View> findVisibleChildren2;
                int size2;
                C0173Do.m401try(list, "path");
                C0173Do.m401try(str, "mapKey");
                String str2 = str + '.' + i2;
                ArrayList arrayList = new ArrayList();
                if (view == null) {
                    return arrayList;
                }
                if (i >= list.size()) {
                    arrayList.add(new MatchedView(view, str2));
                } else {
                    PathComponent pathComponent = list.get(i);
                    if (C0173Do.m394do(pathComponent.getClassName(), CodelessMatcher.PARENT_CLASS_NAME)) {
                        ViewParent parent = view.getParent();
                        if ((parent instanceof ViewGroup) && (size = (findVisibleChildren = findVisibleChildren((ViewGroup) parent)).size()) > 0) {
                            int i3 = 0;
                            while (true) {
                                int i4 = i3 + 1;
                                arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren.get(i3), list, i + 1, i3, str2));
                                if (i4 >= size) {
                                    break;
                                }
                                i3 = i4;
                            }
                        }
                        return arrayList;
                    }
                    if (C0173Do.m394do(pathComponent.getClassName(), CodelessMatcher.CURRENT_CLASS_NAME)) {
                        arrayList.add(new MatchedView(view, str2));
                        return arrayList;
                    }
                    if (!isTheSameView(view, pathComponent, i2)) {
                        return arrayList;
                    }
                    if (i == list.size() - 1) {
                        arrayList.add(new MatchedView(view, str2));
                    }
                }
                if ((view instanceof ViewGroup) && (size2 = (findVisibleChildren2 = findVisibleChildren((ViewGroup) view)).size()) > 0) {
                    int i5 = 0;
                    while (true) {
                        int i6 = i5 + 1;
                        arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren2.get(i5), list, i + 1, i5, str2));
                        if (i6 >= size2) {
                            break;
                        }
                        i5 = i6;
                    }
                }
                return arrayList;
            }
        }

        public ViewMatcher(View view, Handler handler, HashSet<String> hashSet, String str) {
            C0173Do.m401try(handler, "handler");
            C0173Do.m401try(hashSet, "listenerSet");
            C0173Do.m401try(str, "activityName");
            this.rootView = new WeakReference<>(view);
            this.handler = handler;
            this.listenerSet = hashSet;
            this.activityName = str;
            handler.postDelayed(this, 200L);
        }

        private final void attachListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            if (eventBinding == null) {
                return;
            }
            try {
                View view2 = matchedView.getView();
                if (view2 == null) {
                    return;
                }
                View findRCTRootView = ViewHierarchy.findRCTRootView(view2);
                if (findRCTRootView != null && ViewHierarchy.INSTANCE.isRCTButton(view2, findRCTRootView)) {
                    attachRCTListener(matchedView, view, eventBinding);
                    return;
                }
                if (BF.j(view2.getClass().getName(), "com.facebook.react")) {
                    return;
                }
                if (!(view2 instanceof AdapterView)) {
                    attachOnClickListener(matchedView, view, eventBinding);
                } else if (view2 instanceof ListView) {
                    attachOnItemClickListener(matchedView, view, eventBinding);
                }
            } catch (Exception e) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(CodelessMatcher.access$getTAG$cp(), e);
            }
        }

        private final void attachOnClickListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z;
            View view2 = matchedView.getView();
            if (view2 == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            View.OnClickListener existingOnClickListener = ViewHierarchy.getExistingOnClickListener(view2);
            if (existingOnClickListener instanceof CodelessLoggingEventListener.AutoLoggingOnClickListener) {
                if (existingOnClickListener == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener");
                }
                if (((CodelessLoggingEventListener.AutoLoggingOnClickListener) existingOnClickListener).getSupportCodelessLogging()) {
                    z = true;
                    if (!this.listenerSet.contains(viewMapKey) || z) {
                    }
                    view2.setOnClickListener(CodelessLoggingEventListener.getOnClickListener(eventBinding, view, view2));
                    this.listenerSet.add(viewMapKey);
                    return;
                }
            }
            z = false;
            if (this.listenerSet.contains(viewMapKey)) {
            }
        }

        private final void attachOnItemClickListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z;
            AdapterView adapterView = (AdapterView) matchedView.getView();
            if (adapterView == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
            if (onItemClickListener instanceof CodelessLoggingEventListener.AutoLoggingOnItemClickListener) {
                if (onItemClickListener == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener");
                }
                if (((CodelessLoggingEventListener.AutoLoggingOnItemClickListener) onItemClickListener).getSupportCodelessLogging()) {
                    z = true;
                    if (!this.listenerSet.contains(viewMapKey) || z) {
                    }
                    adapterView.setOnItemClickListener(CodelessLoggingEventListener.getOnItemClickListener(eventBinding, view, adapterView));
                    this.listenerSet.add(viewMapKey);
                    return;
                }
            }
            z = false;
            if (this.listenerSet.contains(viewMapKey)) {
            }
        }

        private final void attachRCTListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z;
            View view2 = matchedView.getView();
            if (view2 == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            View.OnTouchListener existingOnTouchListener = ViewHierarchy.getExistingOnTouchListener(view2);
            if (existingOnTouchListener instanceof RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) {
                if (existingOnTouchListener == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener");
                }
                if (((RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) existingOnTouchListener).getSupportCodelessLogging()) {
                    z = true;
                    if (!this.listenerSet.contains(viewMapKey) || z) {
                    }
                    view2.setOnTouchListener(RCTCodelessLoggingEventListener.getOnTouchListener(eventBinding, view, view2));
                    this.listenerSet.add(viewMapKey);
                    return;
                }
            }
            z = false;
            if (this.listenerSet.contains(viewMapKey)) {
            }
        }

        private final void findView(EventBinding eventBinding, View view) {
            if (eventBinding == null || view == null) {
                return;
            }
            String activityName = eventBinding.getActivityName();
            if ((activityName == null || activityName.length() == 0) || C0173Do.m394do(eventBinding.getActivityName(), this.activityName)) {
                List<PathComponent> viewPath = eventBinding.getViewPath();
                if (viewPath.size() > 25) {
                    return;
                }
                Iterator<MatchedView> it = Companion.findViewByPath(eventBinding, view, viewPath, 0, -1, this.activityName).iterator();
                while (it.hasNext()) {
                    attachListener(it.next(), view, eventBinding);
                }
            }
        }

        public static final List<MatchedView> findViewByPath(EventBinding eventBinding, View view, List<PathComponent> list, int i, int i2, String str) {
            return Companion.findViewByPath(eventBinding, view, list, i, i2, str);
        }

        private final void startMatch() {
            int size;
            List<EventBinding> list = this.eventBindings;
            if (list == null || this.rootView.get() == null || list.size() - 1 < 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i + 1;
                findView(list.get(i), this.rootView.get());
                if (i2 > size) {
                    return;
                } else {
                    i = i2;
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            startMatch();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            startMatch();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(C3756th.m8303if());
                    if (appSettingsWithoutQuery != null && appSettingsWithoutQuery.getCodelessEventsEnabled()) {
                        List<EventBinding> parseArray = EventBinding.Companion.parseArray(appSettingsWithoutQuery.getEventBindings());
                        this.eventBindings = parseArray;
                        if (parseArray == null || (view = this.rootView.get()) == null) {
                            return;
                        }
                        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.addOnGlobalLayoutListener(this);
                            viewTreeObserver.addOnScrollChangedListener(this);
                        }
                        startMatch();
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    private CodelessMatcher() {
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        Set<Activity> newSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        C0173Do.m399new(newSetFromMap, "newSetFromMap(WeakHashMap())");
        this.activitiesSet = newSetFromMap;
        this.viewMatchers = new LinkedHashSet();
        this.listenerSet = new HashSet<>();
        this.activityToListenerMap = new HashMap<>();
    }

    public /* synthetic */ CodelessMatcher(C2819gd c2819gd) {
        this();
    }

    public static final /* synthetic */ CodelessMatcher access$getCodelessMatcher$cp() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return codelessMatcher;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$setCodelessMatcher$cp(CodelessMatcher codelessMatcher2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return;
        }
        try {
            codelessMatcher = codelessMatcher2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
        }
    }

    public static final synchronized CodelessMatcher getInstance() {
        synchronized (CodelessMatcher.class) {
            if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
                return null;
            }
            try {
                return Companion.getInstance();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
                return null;
            }
        }
    }

    public static final Bundle getParameters(EventBinding eventBinding, View view, View view2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return Companion.getParameters(eventBinding, view, view2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
            return null;
        }
    }

    private final void matchViews() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            for (Activity activity : this.activitiesSet) {
                if (activity != null) {
                    this.viewMatchers.add(new ViewMatcher(AppEventUtility.getRootView(activity), this.uiThreadHandler, this.listenerSet, activity.getClass().getSimpleName()));
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                matchViews();
            } else {
                this.uiThreadHandler.post(new RunnableC2852h9(this, 3));
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startTracking$lambda-1, reason: not valid java name */
    public static final void m5352startTracking$lambda1(CodelessMatcher codelessMatcher2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return;
        }
        try {
            C0173Do.m401try(codelessMatcher2, "this$0");
            codelessMatcher2.matchViews();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CodelessMatcher.class);
        }
    }

    public final void add(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new C3344mh("Can't add activity to CodelessMatcher on non-UI thread");
            }
            this.activitiesSet.add(activity);
            this.listenerSet.clear();
            HashSet<String> hashSet = this.activityToListenerMap.get(Integer.valueOf(activity.hashCode()));
            if (hashSet != null) {
                this.listenerSet = hashSet;
            }
            startTracking();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void destroy(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            this.activityToListenerMap.remove(Integer.valueOf(activity.hashCode()));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void remove(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new C3344mh("Can't remove activity from CodelessMatcher on non-UI thread");
            }
            this.activitiesSet.remove(activity);
            this.viewMatchers.clear();
            this.activityToListenerMap.put(Integer.valueOf(activity.hashCode()), (HashSet) this.listenerSet.clone());
            this.listenerSet.clear();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
