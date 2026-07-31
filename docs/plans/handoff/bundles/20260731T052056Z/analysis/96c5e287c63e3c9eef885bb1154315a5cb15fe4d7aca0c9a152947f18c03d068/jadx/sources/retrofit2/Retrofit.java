package retrofit2;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.materialswitch.MaterialSwitch;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import okhttp3.ConnectionPool;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl;
import org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl$$ExternalSyntheticLambda1;
import org.wikipedia.feed.personalization.db.dao.InterestTopicDao_Impl;
import org.wikipedia.feed.personalization.db.entity.InterestArticle;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.onboarding.OnboardingPageView;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListItemActionsView;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.GoneIfEmptyTextView;
import retrofit2.CallAdapter;
import retrofit2.Converter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Retrofit {
    public final Object baseUrl;
    public final Object callAdapterFactories;
    public final Object callFactory;
    public final Object converterFactories;
    public final Object serviceMethodCache;

    public Retrofit(InterestTopicDao_Impl interestTopicDao_Impl, InterestArticleDao_Impl interestArticleDao_Impl, HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl, ReadingListPageDao_Impl readingListPageDao_Impl, WikiSite wikiSite) {
        interestTopicDao_Impl.getClass();
        interestArticleDao_Impl.getClass();
        historyEntryWithImageDao_Impl.getClass();
        readingListPageDao_Impl.getClass();
        this.serviceMethodCache = interestTopicDao_Impl;
        this.callFactory = interestArticleDao_Impl;
        this.baseUrl = historyEntryWithImageDao_Impl;
        this.converterFactories = readingListPageDao_Impl;
        this.callAdapterFactories = wikiSite;
    }

    public CallAdapter callAdapter(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List list = (List) this.callAdapterFactories;
        int indexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = indexOf; i < size; i++) {
            CallAdapter callAdapter = ((CallAdapter.Factory) list.get(i)).get(type, annotationArr);
            if (callAdapter != null) {
                return callAdapter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(((CallAdapter.Factory) list.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Object create(final Class cls) {
        if (!cls.isInterface()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("API declarations must be interfaces.");
            return null;
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                sb.append(cls2.getName());
                if (cls2 != cls) {
                    sb.append(" which is an interface of ");
                    sb.append(cls.getName());
                }
                throw new IllegalArgumentException(sb.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.Retrofit.1
            public final Object[] emptyArgs = new Object[0];

            /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
            
                r10 = retrofit2.HttpServiceMethod.parseAnnotations(r7, r0, r9);
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x004a, code lost:
            
                ((j$.util.concurrent.ConcurrentHashMap) r7.serviceMethodCache).put(r9, r10);
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x0074, code lost:
            
                r7 = (retrofit2.HttpServiceMethod) r1;
             */
            @Override // java.lang.reflect.InvocationHandler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke(java.lang.Object r8, java.lang.reflect.Method r9, java.lang.Object[] r10) {
                /*
                    r7 = this;
                    java.lang.Class r0 = r2
                    java.lang.Class r1 = r9.getDeclaringClass()
                    java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
                    if (r1 != r2) goto Lf
                    java.lang.Object r7 = r9.invoke(r7, r10)
                    return r7
                Lf:
                    if (r10 == 0) goto L13
                L11:
                    r4 = r10
                    goto L16
                L13:
                    java.lang.Object[] r10 = r7.emptyArgs
                    goto L11
                L16:
                    retrofit2.Reflection r10 = retrofit2.Platform.reflection
                    boolean r1 = r10.isDefaultMethod(r9)
                    if (r1 == 0) goto L23
                    java.lang.Object r7 = r10.invokeDefaultMethod(r9, r0, r8, r4)
                    return r7
                L23:
                    retrofit2.Retrofit r7 = retrofit2.Retrofit.this
                L25:
                    java.lang.Object r10 = r7.serviceMethodCache
                    j$.util.concurrent.ConcurrentHashMap r10 = (j$.util.concurrent.ConcurrentHashMap) r10
                    java.lang.Object r10 = r10.get(r9)
                    boolean r1 = r10 instanceof retrofit2.HttpServiceMethod
                    if (r1 == 0) goto L34
                    retrofit2.HttpServiceMethod r10 = (retrofit2.HttpServiceMethod) r10
                    goto L79
                L34:
                    if (r10 != 0) goto L64
                    java.lang.Object r1 = new java.lang.Object
                    r1.<init>()
                    monitor-enter(r1)
                    java.lang.Object r10 = r7.serviceMethodCache     // Catch: java.lang.Throwable -> L53
                    j$.util.concurrent.ConcurrentHashMap r10 = (j$.util.concurrent.ConcurrentHashMap) r10     // Catch: java.lang.Throwable -> L53
                    java.lang.Object r10 = r10.putIfAbsent(r9, r1)     // Catch: java.lang.Throwable -> L53
                    if (r10 != 0) goto L60
                    retrofit2.HttpServiceMethod r10 = retrofit2.HttpServiceMethod.parseAnnotations(r7, r0, r9)     // Catch: java.lang.Throwable -> L56
                    java.lang.Object r7 = r7.serviceMethodCache     // Catch: java.lang.Throwable -> L53
                    j$.util.concurrent.ConcurrentHashMap r7 = (j$.util.concurrent.ConcurrentHashMap) r7     // Catch: java.lang.Throwable -> L53
                    r7.put(r9, r10)     // Catch: java.lang.Throwable -> L53
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L53
                    goto L79
                L53:
                    r0 = move-exception
                    r7 = r0
                    goto L62
                L56:
                    r0 = move-exception
                    r8 = r0
                    java.lang.Object r7 = r7.serviceMethodCache     // Catch: java.lang.Throwable -> L53
                    j$.util.concurrent.ConcurrentHashMap r7 = (j$.util.concurrent.ConcurrentHashMap) r7     // Catch: java.lang.Throwable -> L53
                    r7.remove(r9)     // Catch: java.lang.Throwable -> L53
                    throw r8     // Catch: java.lang.Throwable -> L53
                L60:
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L53
                    goto L64
                L62:
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L53
                    throw r7
                L64:
                    monitor-enter(r10)
                    java.lang.Object r1 = r7.serviceMethodCache     // Catch: java.lang.Throwable -> L71
                    j$.util.concurrent.ConcurrentHashMap r1 = (j$.util.concurrent.ConcurrentHashMap) r1     // Catch: java.lang.Throwable -> L71
                    java.lang.Object r1 = r1.get(r9)     // Catch: java.lang.Throwable -> L71
                    if (r1 != 0) goto L74
                    monitor-exit(r10)     // Catch: java.lang.Throwable -> L71
                    goto L25
                L71:
                    r0 = move-exception
                    r7 = r0
                    goto L8a
                L74:
                    r7 = r1
                    retrofit2.HttpServiceMethod r7 = (retrofit2.HttpServiceMethod) r7     // Catch: java.lang.Throwable -> L71
                    monitor-exit(r10)     // Catch: java.lang.Throwable -> L71
                    r10 = r7
                L79:
                    retrofit2.OkHttpCall r1 = new retrofit2.OkHttpCall
                    retrofit2.RequestFactory r2 = r10.requestFactory
                    okhttp3.OkHttpClient r5 = r10.callFactory
                    retrofit2.Converter r6 = r10.responseConverter
                    r3 = r8
                    r1.<init>(r2, r3, r4, r5, r6)
                    java.lang.Object r7 = r10.adapt(r1, r4)
                    return r7
                L8a:
                    monitor-exit(r10)     // Catch: java.lang.Throwable -> L71
                    throw r7
                */
                throw new UnsupportedOperationException("Method not decompiled: retrofit2.Retrofit.AnonymousClass1.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        if (r9 == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object deleteAllInterests(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof org.wikipedia.feed.personalization.interest.InterestSelectionRepository$deleteAllInterests$1
            if (r0 == 0) goto L13
            r0 = r9
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$deleteAllInterests$1 r0 = (org.wikipedia.feed.personalization.interest.InterestSelectionRepository$deleteAllInterests$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$deleteAllInterests$1 r0 = new org.wikipedia.feed.personalization.interest.InterestSelectionRepository$deleteAllInterests$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            r6 = 1
            if (r2 == 0) goto L38
            if (r2 == r6) goto L34
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r9)
            return r5
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            r8 = 0
            return r8
        L34:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L55
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.serviceMethodCache
            org.wikipedia.feed.personalization.db.dao.InterestTopicDao_Impl r9 = (org.wikipedia.feed.personalization.db.dao.InterestTopicDao_Impl) r9
            r0.label = r6
            androidx.room.RoomDatabase r9 = r9.__db
            org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1 r2 = new org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1
            r7 = 15
            r2.<init>(r7)
            java.lang.Object r9 = kotlin.ExceptionsKt.performSuspending(r9, r3, r6, r2, r0)
            if (r9 != r1) goto L51
            goto L52
        L51:
            r9 = r5
        L52:
            if (r9 != r1) goto L55
            goto L6e
        L55:
            java.lang.Object r8 = r8.callFactory
            org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl r8 = (org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl) r8
            r0.label = r4
            androidx.room.RoomDatabase r8 = r8.__db
            org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1 r9 = new org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1
            r2 = 10
            r9.<init>(r2)
            java.lang.Object r8 = kotlin.ExceptionsKt.performSuspending(r8, r3, r6, r9, r0)
            if (r8 != r1) goto L6b
            goto L6c
        L6b:
            r8 = r5
        L6c:
            if (r8 != r1) goto L6f
        L6e:
            return r1
        L6f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.Retrofit.deleteAllInterests(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Serializable getArticlesByTopic(java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            java.lang.Object r0 = r10.callAdapterFactories
            r3 = r0
            org.wikipedia.dataclient.WikiSite r3 = (org.wikipedia.dataclient.WikiSite) r3
            boolean r0 = r12 instanceof org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getArticlesByTopic$1
            if (r0 == 0) goto L19
            r0 = r12
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getArticlesByTopic$1 r0 = (org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getArticlesByTopic$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r1 & r2
            if (r4 == 0) goto L19
            int r1 = r1 - r2
            r0.label = r1
        L17:
            r9 = r0
            goto L1f
        L19:
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getArticlesByTopic$1 r0 = new org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getArticlesByTopic$1
            r0.<init>(r10, r12)
            goto L17
        L1f:
            java.lang.Object r10 = r9.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r12 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r9.label
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L35
            if (r0 != r2) goto L2f
            kotlin.ResultKt.throwOnFailure(r10)
            goto L55
        L2f:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            return r1
        L35:
            kotlin.ResultKt.throwOnFailure(r10)
            org.wikipedia.dataclient.ServiceFactory r10 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.Service r4 = org.wikipedia.dataclient.ServiceFactory.get(r3)
            java.lang.String r10 = "articletopic:"
            java.lang.String r0 = "^95"
            java.lang.String r5 = androidx.compose.animation.core.Animation.CC.m(r10, r11, r0)
            r9.label = r2
            r6 = 20
            java.lang.String r7 = "classic_noboostlinks"
            java.lang.String r8 = "random"
            java.lang.Object r10 = r4.getArticlesByTopic(r5, r6, r7, r8, r9)
            if (r10 != r12) goto L55
            return r12
        L55:
            org.wikipedia.dataclient.mwapi.MwQueryResponse r10 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r10
            org.wikipedia.dataclient.mwapi.MwQueryResult r10 = r10.query
            if (r10 == 0) goto Lcc
            java.util.List r10 = r10.pages
            if (r10 == 0) goto Lcc
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.Iterator r10 = r10.iterator()
        L68:
            boolean r12 = r10.hasNext()
            if (r12 == 0) goto L83
            java.lang.Object r12 = r10.next()
            r0 = r12
            org.wikipedia.dataclient.mwapi.MwQueryPage r0 = (org.wikipedia.dataclient.mwapi.MwQueryPage) r0
            org.wikipedia.dataclient.mwapi.MwQueryPage$PageProps r0 = r0.pageProps
            if (r0 == 0) goto L7c
            java.lang.String r0 = r0.disambiguation
            goto L7d
        L7c:
            r0 = r1
        L7d:
            if (r0 != 0) goto L68
            r11.add(r12)
            goto L68
        L83:
            androidx.recyclerview.widget.DiffUtil$1 r10 = new androidx.recyclerview.widget.DiffUtil$1
            r12 = 28
            r10.<init>(r12)
            java.util.List r10 = kotlin.collections.CollectionsKt.sortedWith(r11, r10)
            androidx.recyclerview.widget.DiffUtil$1 r11 = new androidx.recyclerview.widget.DiffUtil$1
            r12 = 29
            r11.<init>(r12)
            java.util.List r10 = kotlin.collections.CollectionsKt.sortedWith(r10, r11)
            java.util.ArrayList r11 = new java.util.ArrayList
            r12 = 10
            int r12 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r10, r12)
            r11.<init>(r12)
            java.util.Iterator r10 = r10.iterator()
        La8:
            boolean r12 = r10.hasNext()
            if (r12 == 0) goto Lcb
            java.lang.Object r12 = r10.next()
            org.wikipedia.dataclient.mwapi.MwQueryPage r12 = (org.wikipedia.dataclient.mwapi.MwQueryPage) r12
            org.wikipedia.page.PageTitle r1 = new org.wikipedia.page.PageTitle
            java.lang.String r2 = r12.title
            java.lang.String r4 = r12.thumbUrl()
            java.lang.String r5 = r12.description
            java.lang.String r0 = r3.languageCode
            java.lang.String r6 = r12.displayTitle(r0)
            r1.<init>(r2, r3, r4, r5, r6)
            r11.add(r1)
            goto La8
        Lcb:
            return r11
        Lcc:
            kotlin.collections.EmptyList r10 = kotlin.collections.EmptyList.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.Retrofit.getArticlesByTopic(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005f A[LOOP:0: B:11:0x0059->B:13:0x005f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Serializable getPersistedArticles(java.lang.String r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedArticles$1
            if (r0 == 0) goto L13
            r0 = r9
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedArticles$1 r0 = (org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedArticles$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedArticles$1 r0 = new org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedArticles$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2e
            if (r2 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r9)
            goto L48
        L27:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L2e:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r7.callFactory
            org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl r9 = (org.wikipedia.feed.personalization.db.dao.InterestArticleDao_Impl) r9
            r0.label = r3
            androidx.room.RoomDatabase r2 = r9.__db
            org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8 r4 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8
            r5 = 17
            r4.<init>(r5, r8, r9)
            r8 = 0
            java.lang.Object r9 = kotlin.ExceptionsKt.performSuspending(r2, r3, r8, r4, r0)
            if (r9 != r1) goto L48
            return r1
        L48:
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.util.ArrayList r8 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r9, r0)
            r8.<init>(r0)
            java.util.Iterator r9 = r9.iterator()
        L59:
            boolean r0 = r9.hasNext()
            if (r0 == 0) goto L7a
            java.lang.Object r0 = r9.next()
            org.wikipedia.feed.personalization.db.entity.InterestArticle r0 = (org.wikipedia.feed.personalization.db.entity.InterestArticle) r0
            org.wikipedia.page.PageTitle r1 = new org.wikipedia.page.PageTitle
            java.lang.String r2 = r0.apiTitle
            java.lang.Object r3 = r7.callAdapterFactories
            org.wikipedia.dataclient.WikiSite r3 = (org.wikipedia.dataclient.WikiSite) r3
            java.lang.String r4 = r0.thumbUrl
            java.lang.String r5 = r0.description
            java.lang.String r6 = r0.displayTitle
            r1.<init>(r2, r3, r4, r5, r6)
            r8.add(r1)
            goto L59
        L7a:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.Retrofit.getPersistedArticles(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b A[LOOP:2: B:31:0x0095->B:33:0x009b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Serializable getPersistedTopics(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedTopics$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedTopics$1 r0 = (org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedTopics$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedTopics$1 r0 = new org.wikipedia.feed.personalization.interest.InterestSelectionRepository$getPersistedTopics$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L2f
            if (r2 != r5) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L48
        L29:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r3
        L2f:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r7 = r7.serviceMethodCache
            org.wikipedia.feed.personalization.db.dao.InterestTopicDao_Impl r7 = (org.wikipedia.feed.personalization.db.dao.InterestTopicDao_Impl) r7
            r0.label = r5
            androidx.room.RoomDatabase r7 = r7.__db
            org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1 r8 = new org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1
            r2 = 13
            r8.<init>(r2)
            java.lang.Object r8 = kotlin.ExceptionsKt.performSuspending(r7, r5, r4, r8, r0)
            if (r8 != r1) goto L48
            return r1
        L48:
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r8 = r8.iterator()
        L53:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L86
            java.lang.Object r0 = r8.next()
            org.wikipedia.feed.personalization.db.entity.InterestTopic r0 = (org.wikipedia.feed.personalization.db.entity.InterestTopic) r0
            java.util.List r1 = org.wikipedia.topics.ArticleTopics.all
            java.util.Iterator r1 = r1.iterator()
        L65:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L7d
            java.lang.Object r2 = r1.next()
            r5 = r2
            org.wikipedia.topics.ArticleTopic r5 = (org.wikipedia.topics.ArticleTopic) r5
            java.lang.String r5 = r5.topicId
            java.lang.String r6 = r0.topicId
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L65
            goto L7e
        L7d:
            r2 = r3
        L7e:
            org.wikipedia.topics.ArticleTopic r2 = (org.wikipedia.topics.ArticleTopic) r2
            if (r2 == 0) goto L53
            r7.add(r2)
            goto L53
        L86:
            java.util.ArrayList r8 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r7, r0)
            r8.<init>(r0)
            java.util.Iterator r7 = r7.iterator()
        L95:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto Laa
            java.lang.Object r0 = r7.next()
            org.wikipedia.topics.ArticleTopic r0 = (org.wikipedia.topics.ArticleTopic) r0
            org.wikipedia.feed.personalization.interest.OnboardingTopic r1 = new org.wikipedia.feed.personalization.interest.OnboardingTopic
            r1.<init>(r0, r4)
            r8.add(r1)
            goto L95
        Laa:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.Retrofit.getPersistedTopics(kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00a9 A[LOOP:7: B:127:0x00a3->B:129:0x00a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00eb A[LOOP:3: B:73:0x00e5->B:75:0x00eb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0168  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0210 -> B:25:0x0218). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.Serializable loadInitialArticles(kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.Retrofit.loadInitialArticles(kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    public Converter requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        List list = (List) this.converterFactories;
        int indexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = indexOf; i < size; i++) {
            Converter requestBodyConverter = ((Converter.Factory) list.get(i)).requestBodyConverter(type, annotationArr, annotationArr2, this);
            if (requestBodyConverter != null) {
                return requestBodyConverter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(((Converter.Factory) list.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Converter responseBodyConverter(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List list = (List) this.converterFactories;
        int indexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = indexOf; i < size; i++) {
            Converter responseBodyConverter = ((Converter.Factory) list.get(i)).responseBodyConverter(type, annotationArr, this);
            if (responseBodyConverter != null) {
                return responseBodyConverter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(((Converter.Factory) list.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Object saveArticle(PageTitle pageTitle, String str, SuspendLambda suspendLambda) {
        InterestArticleDao_Impl interestArticleDao_Impl = (InterestArticleDao_Impl) this.callFactory;
        String prefixedText = pageTitle.getPrefixedText();
        Namespace namespace = pageTitle.namespace();
        String displayText = pageTitle.getDisplayText();
        String str2 = pageTitle.description;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = pageTitle.thumbUrl;
        Object performSuspending = ExceptionsKt.performSuspending(interestArticleDao_Impl.__db, false, true, new InterestArticleDao_Impl$$ExternalSyntheticLambda1(interestArticleDao_Impl, new InterestArticle(prefixedText, str, namespace, displayText, str2, str3 == null ? "" : str3), 0), suspendLambda);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        if (performSuspending != coroutineSingletons) {
            performSuspending = unit;
        }
        return performSuspending == coroutineSingletons ? performSuspending : unit;
    }

    public void stringConverter(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        List list = (List) this.converterFactories;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((Converter.Factory) list.get(i)).getClass();
        }
    }

    public /* synthetic */ Retrofit(LinearLayout linearLayout, View view, View view2, View view3, TextView textView, View view4) {
        this.serviceMethodCache = view;
        this.callFactory = view2;
        this.baseUrl = view3;
        this.converterFactories = textView;
        this.callAdapterFactories = view4;
    }

    public /* synthetic */ Retrofit(ViewGroup viewGroup, View view, View view2, View view3, View view4) {
        this.serviceMethodCache = viewGroup;
        this.callFactory = view;
        this.baseUrl = view2;
        this.converterFactories = view3;
        this.callAdapterFactories = view4;
    }

    public Retrofit(TextView textView, ConstraintLayout constraintLayout, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.serviceMethodCache = textView;
        this.callFactory = textView2;
        this.baseUrl = textView3;
        this.converterFactories = textView4;
        this.callAdapterFactories = textView5;
    }

    public Retrofit(ReadingListItemActionsView readingListItemActionsView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, MaterialSwitch materialSwitch, LinearLayout linearLayout4, TextView textView, LinearLayout linearLayout5, LinearLayout linearLayout6, TextView textView2) {
        this.serviceMethodCache = linearLayout2;
        this.callFactory = materialSwitch;
        this.baseUrl = textView;
        this.converterFactories = linearLayout5;
        this.callAdapterFactories = textView2;
    }

    public Retrofit(OnboardingPageView onboardingPageView, View view, ImageView imageView, ConnectionPool connectionPool, AppTextView appTextView, NestedScrollView nestedScrollView, LinearLayout linearLayout, AppTextView appTextView2, GoneIfEmptyTextView goneIfEmptyTextView) {
        this.serviceMethodCache = view;
        this.callFactory = nestedScrollView;
        this.baseUrl = linearLayout;
        this.converterFactories = appTextView2;
        this.callAdapterFactories = goneIfEmptyTextView;
    }

    public Retrofit(OkHttpClient okHttpClient, HttpUrl httpUrl, List list, List list2) {
        this.serviceMethodCache = new ConcurrentHashMap();
        this.callFactory = okHttpClient;
        this.baseUrl = httpUrl;
        this.converterFactories = list;
        this.callAdapterFactories = list2;
    }
}
