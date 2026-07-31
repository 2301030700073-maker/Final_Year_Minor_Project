package org.wikipedia.notifications;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Cookie;
import okhttp3.HttpUrl;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public int allUnreadCount;
    public String currentContinueStr;
    public String currentSearchQuery;
    public Map dbNameMap;
    public final LoginClient$login$$inlined$CoroutineExceptionHandler$1 handler;
    public int mentionsUnreadCount;
    public final ArrayList notificationList;
    public final AvPlayer notificationRepository;
    public int selectedFilterTab;
    public final ReadonlyStateFlow uiState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.notifications.NotificationViewModel$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public NotificationViewModel L$0;
        public int label;
        public final /* synthetic */ NotificationViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(NotificationViewModel notificationViewModel, Continuation continuation, int i) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = notificationViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            NotificationViewModel notificationViewModel = this.this$0;
            switch (i) {
                case 0:
                    return new AnonymousClass1(notificationViewModel, continuation, 0);
                default:
                    return new AnonymousClass1(notificationViewModel, continuation, 1);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            CoroutineScope coroutineScope = (CoroutineScope) obj;
            Continuation continuation = (Continuation) obj2;
            switch (i) {
            }
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                int r0 = r8.$r8$classId
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r3 = 1
                org.wikipedia.notifications.NotificationViewModel r4 = r8.this$0
                r5 = 0
                switch(r0) {
                    case 0: goto L58;
                    default: goto Ld;
                }
            Ld:
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r6 = r8.label
                r7 = 2
                if (r6 == 0) goto L27
                if (r6 == r3) goto L21
                if (r6 != r7) goto L1c
                kotlin.ResultKt.throwOnFailure(r9)
                goto L57
            L1c:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
                r1 = r5
                goto L57
            L21:
                org.wikipedia.notifications.NotificationViewModel r2 = r8.L$0
                kotlin.ResultKt.throwOnFailure(r9)
                goto L48
            L27:
                kotlin.ResultKt.throwOnFailure(r9)
                org.wikipedia.WikipediaApp r9 = org.wikipedia.WikipediaApp.instance
                org.wikipedia.WikipediaApp r9 = org.jsoup.Jsoup.getInstance()
                boolean r9 = r9.isOnline()
                if (r9 == 0) goto L4c
                org.wikipedia.media.AvPlayer r9 = r4.notificationRepository
                java.lang.String r2 = r4.currentContinueStr
                r8.L$0 = r4
                r8.label = r3
                java.lang.String r3 = "read|!read"
                java.lang.Object r9 = r9.fetchAndSave(r3, r2, r8)
                if (r9 != r0) goto L47
                goto L56
            L47:
                r2 = r4
            L48:
                java.lang.String r9 = (java.lang.String) r9
                r2.currentContinueStr = r9
            L4c:
                r8.L$0 = r5
                r8.label = r7
                java.lang.Object r8 = r4.filterAndPostNotifications(r8)
                if (r8 != r0) goto L57
            L56:
                r1 = r0
            L57:
                return r1
            L58:
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r6 = r8.label
                if (r6 == 0) goto L6b
                if (r6 != r3) goto L66
                org.wikipedia.notifications.NotificationViewModel r4 = r8.L$0
                kotlin.ResultKt.throwOnFailure(r9)
                goto L7c
            L66:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
                r1 = r5
                goto L80
            L6b:
                kotlin.ResultKt.throwOnFailure(r9)
                org.wikipedia.media.AvPlayer r9 = r4.notificationRepository
                r8.L$0 = r4
                r8.label = r3
                java.lang.Object r9 = r9.fetchUnreadWikiDbNames(r8)
                if (r9 != r0) goto L7c
                r1 = r0
                goto L80
            L7c:
                java.util.Map r9 = (java.util.Map) r9
                r4.dbNameMap = r9
            L80:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.NotificationViewModel.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public NotificationViewModel() {
        AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
        this.notificationRepository = new AvPlayer(Cookie.Companion.getInstance().notificationDao());
        LoginClient$login$$inlined$CoroutineExceptionHandler$1 loginClient$login$$inlined$CoroutineExceptionHandler$1 = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
        this.handler = loginClient$login$$inlined$CoroutineExceptionHandler$1;
        this.notificationList = new ArrayList();
        this.dbNameMap = EmptyMap.INSTANCE;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), loginClient$login$$inlined$CoroutineExceptionHandler$1, null, new AnonymousClass1(this, null, 0), 2);
        fetchAndSave(false);
    }

    public final int excludedFiltersCount() {
        int i;
        Prefs prefs = Prefs.INSTANCE;
        Set notificationExcludedWikiCodes = Prefs.getNotificationExcludedWikiCodes();
        Set notificationExcludedTypeCodes = Prefs.getNotificationExcludedTypeCodes();
        int i2 = NotificationFilterActivity.$r8$clinit;
        ArrayList allWikisList = HttpUrl.Companion.allWikisList();
        int i3 = 0;
        if (allWikisList.isEmpty()) {
            i = 0;
        } else {
            Iterator it = allWikisList.iterator();
            i = 0;
            while (it.hasNext()) {
                if (notificationExcludedWikiCodes.contains((String) it.next()) && (i = i + 1) < 0) {
                    Room.throwCountOverflow();
                    throw null;
                }
            }
        }
        int i4 = NotificationFilterActivity.$r8$clinit;
        ArrayList allTypesIdList = HttpUrl.Companion.allTypesIdList();
        if (!allTypesIdList.isEmpty()) {
            Iterator it2 = allTypesIdList.iterator();
            while (it2.hasNext()) {
                if (notificationExcludedTypeCodes.contains((String) it2.next()) && (i3 = i3 + 1) < 0) {
                    Room.throwCountOverflow();
                    throw null;
                }
            }
        }
        return i + i3;
    }

    public final void fetchAndSave(boolean z) {
        Continuation continuation = null;
        if (z) {
            this.currentContinueStr = null;
            this.notificationList.clear();
        }
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new AnonymousClass1(this, continuation, 1), 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x011a A[LOOP:3: B:57:0x0114->B:59:0x011a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object filterAndPostNotifications(kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.NotificationViewModel.filterAndPostNotifications(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
