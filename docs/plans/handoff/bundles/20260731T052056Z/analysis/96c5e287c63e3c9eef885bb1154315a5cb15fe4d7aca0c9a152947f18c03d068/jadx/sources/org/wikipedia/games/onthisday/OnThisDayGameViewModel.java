package org.wikipedia.games.onthisday;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.util.ContextsKt;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneOffset;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.Constants;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameViewModel extends ViewModel {
    public final MutableLiveData _gameState;
    public LocalDate currentDate;
    public Integer currentGameId;
    public GameState currentState;
    public final ArrayList events;
    public final Constants.InvokeSource invokeSource;
    public boolean isArchiveGame;
    public final boolean overrideDate;
    public final ArrayList savedPages;
    public final WikiSite wikiSite;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CurrentQuestion extends Resource {
        public final GameState data;

        public CurrentQuestion(GameState gameState) {
            gameState.getClass();
            this.data = gameState;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CurrentQuestionCorrect extends Resource {
        public final GameState data;

        public CurrentQuestionCorrect(GameState gameState) {
            gameState.getClass();
            this.data = gameState;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CurrentQuestionIncorrect extends Resource {
        public final GameState data;

        public CurrentQuestionIncorrect(GameState gameState) {
            gameState.getClass();
            this.data = gameState;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GameEnded extends Resource {
        public final GameState data;
        public final GameStatistics gameStatistics;

        public GameEnded(GameState gameState, GameStatistics gameStatistics) {
            gameState.getClass();
            gameStatistics.getClass();
            this.data = gameState;
            this.gameStatistics = gameStatistics;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GameStarted extends Resource {
        public final GameState data;

        public GameStarted(GameState gameState) {
            gameState.getClass();
            this.data = gameState;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class TotalGameState {
        public final Map langToState;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(19))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return OnThisDayGameViewModel$TotalGameState$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ TotalGameState(int i, Map map) {
            if ((i & 1) == 0) {
                this.langToState = EmptyMap.INSTANCE;
            } else {
                this.langToState = map;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TotalGameState) && Intrinsics.areEqual(this.langToState, ((TotalGameState) obj).langToState);
        }

        public final int hashCode() {
            return this.langToState.hashCode();
        }

        public final String toString() {
            return "TotalGameState(langToState=" + this.langToState + ")";
        }
    }

    public OnThisDayGameViewModel(SavedStateHandle savedStateHandle) {
        LocalDate now;
        savedStateHandle.getClass();
        this._gameState = new MutableLiveData();
        Object obj = savedStateHandle.get("invokeSource");
        obj.getClass();
        this.invokeSource = (Constants.InvokeSource) obj;
        Object obj2 = savedStateHandle.get("wikiSite");
        obj2.getClass();
        this.wikiSite = (WikiSite) obj2;
        boolean containsKey = ((LinkedHashMap) savedStateHandle.impl.url).containsKey("date");
        this.overrideDate = containsKey;
        if (containsKey) {
            Object obj3 = savedStateHandle.get("date");
            obj3.getClass();
            now = LocalDate.ofInstant(Instant.ofEpochSecond(((Number) obj3).longValue()), ZoneOffset.UTC);
        } else {
            now = LocalDate.now();
        }
        this.currentDate = now;
        this.events = new ArrayList();
        this.savedPages = new ArrayList();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(this, 0), null, new OnThisDayGameViewModel$loadGameState$2(this, true, null), 2);
    }

    public static String getThumbnailUrlForEvent(OnThisDay.Event event) {
        Object obj;
        event.getClass();
        Iterator it = event.pages.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            String thumbnailUrl = ((PageSummary) obj).getThumbnailUrl();
            if (thumbnailUrl != null && thumbnailUrl.length() != 0) {
                break;
            }
        }
        PageSummary pageSummary = (PageSummary) obj;
        if (pageSummary != null) {
            return pageSummary.getThumbnailUrl();
        }
        return null;
    }

    public final QuestionState composeQuestionState(int i) {
        int i2 = i * 2;
        ArrayList arrayList = this.events;
        return new QuestionState((OnThisDay.Event) arrayList.get(i2), (OnThisDay.Event) arrayList.get(i2 + 1), this.currentDate.getMonthValue(), this.currentDate.getDayOfMonth(), null, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object determineLastPlayedGameDate(kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameViewModel.determineLastPlayedGameDate(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final ArrayList getArticlesMentioned() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.events.iterator();
        while (it.hasNext()) {
            arrayList.addAll(((OnThisDay.Event) it.next()).pages);
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (hashSet.add(((PageSummary) next).getApiTitle())) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    public final String getCurrentScreenName() {
        MutableLiveData mutableLiveData = this._gameState;
        if (mutableLiveData.getValue() instanceof GameEnded) {
            return "game_end";
        }
        if (mutableLiveData.getValue() == null || this.currentState == null || (mutableLiveData.getValue() instanceof Resource.Loading)) {
            return "game_loading";
        }
        GameState gameState = this.currentState;
        if (gameState != null) {
            return Animation.CC.m(gameState.currentQuestionIndex + 1, "game_play_");
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentState");
        throw null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:9|10|(1:12)|13|(14:80|81|16|(1:18)(1:79)|19|20|21|(1:23)|24|25|26|(5:28|(2:32|(10:34|(4:58|(3:61|(1:70)(3:66|67|68)|59)|72|73)(1:38)|39|(1:41)(1:57)|42|43|(5:51|52|53|46|(1:48)(5:50|10|(0)|13|(0)))|45|46|(0)(0)))|25|26|(0))|74|75)|15|16|(0)(0)|19|20|21|(0)|24|25|26|(0)|74|75) */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0205, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0206, code lost:
    
        org.wikipedia.util.log.L.w(r0);
        r0 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0188 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [int] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [int] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v5, types: [int] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00ba -> B:25:0x0218). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00c2 -> B:25:0x0218). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ce -> B:25:0x0218). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0189 -> B:10:0x018d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object migrateInProgressGameFromPrefsToDatabase(kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameViewModel.migrateInProgressGameFromPrefsToDatabase(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object publishGameState(org.wikipedia.games.db.DailyGameHistory r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof org.wikipedia.games.onthisday.OnThisDayGameViewModel$publishGameState$1
            if (r0 == 0) goto L13
            r0 = r11
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$publishGameState$1 r0 = (org.wikipedia.games.onthisday.OnThisDayGameViewModel$publishGameState$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$publishGameState$1 r0 = new org.wikipedia.games.onthisday.OnThisDayGameViewModel$publishGameState$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2d
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState r9 = r0.L$2
            androidx.lifecycle.MutableLiveData r10 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lb9
        L2d:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r4
        L33:
            kotlin.ResultKt.throwOnFailure(r11)
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState r11 = r9.currentState
            java.lang.String r2 = "currentState"
            if (r11 == 0) goto Lcb
            int r5 = r11.status
            androidx.lifecycle.MutableLiveData r6 = r9._gameState
            if (r5 != 0) goto L5a
            int r9 = r11.currentQuestionIndex
            if (r9 != 0) goto L50
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameStarted r9 = new org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameStarted
            r9.<init>(r11)
            r6.postValue(r9)
            goto Lc8
        L50:
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$CurrentQuestion r9 = new org.wikipedia.games.onthisday.OnThisDayGameViewModel$CurrentQuestion
            r9.<init>(r11)
            r6.postValue(r9)
            goto Lc8
        L5a:
            if (r5 != r3) goto Lc8
            kotlinx.serialization.json.JsonImpl r5 = org.wikipedia.json.JsonUtil.json
            if (r10 == 0) goto L63
            java.lang.String r10 = r10.gameData
            goto L64
        L63:
            r10 = r4
        L64:
            if (r10 == 0) goto L88
            int r5 = r10.length()
            if (r5 != 0) goto L6d
            goto L88
        L6d:
            kotlinx.serialization.json.JsonImpl r5 = org.wikipedia.json.JsonUtil.json     // Catch: java.lang.Exception -> L84
            r5.getClass()     // Catch: java.lang.Exception -> L84
            kotlinx.serialization.internal.HashSetSerializer r7 = new kotlinx.serialization.internal.HashSetSerializer     // Catch: java.lang.Exception -> L84
            kotlinx.serialization.internal.BooleanSerializer r8 = kotlinx.serialization.internal.BooleanSerializer.INSTANCE     // Catch: java.lang.Exception -> L84
            r7.<init>(r8, r3)     // Catch: java.lang.Exception -> L84
            kotlinx.serialization.KSerializer r7 = kotlin.UnsignedKt.getNullable(r7)     // Catch: java.lang.Exception -> L84
            kotlinx.serialization.KSerializer r7 = (kotlinx.serialization.KSerializer) r7     // Catch: java.lang.Exception -> L84
            java.lang.Object r10 = r5.decodeFromString(r10, r7)     // Catch: java.lang.Exception -> L84
            goto L89
        L84:
            r10 = move-exception
            org.wikipedia.util.log.L.w(r10)
        L88:
            r10 = r4
        L89:
            java.util.List r10 = (java.util.List) r10
            if (r10 != 0) goto L8f
            kotlin.collections.EmptyList r10 = kotlin.collections.EmptyList.INSTANCE
        L8f:
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState r5 = r9.currentState
            if (r5 == 0) goto Lc4
            int r2 = r5.totalQuestions
            r5 = 121(0x79, float:1.7E-43)
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState r10 = org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameState.copy$default(r11, r2, r10, r4, r5)
            r9.currentState = r10
            org.wikipedia.dataclient.WikiSite r9 = r9.wikiSite
            java.lang.String r9 = r9.languageCode
            r0.L$1 = r6
            r0.L$2 = r10
            r0.label = r3
            kotlinx.coroutines.scheduling.DefaultScheduler r11 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r11 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            androidx.glance.appwidget.GlanceAppWidgetReceiver$onDeleted$1 r2 = new androidx.glance.appwidget.GlanceAppWidgetReceiver$onDeleted$1
            r2.<init>(r9, r4)
            java.lang.Object r11 = kotlinx.coroutines.AwaitKt.withContext(r11, r2, r0)
            if (r11 != r1) goto Lb7
            return r1
        Lb7:
            r9 = r10
            r10 = r6
        Lb9:
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameStatistics r11 = (org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameStatistics) r11
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameEnded r0 = new org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameEnded
            r0.<init>(r9, r11)
            r10.postValue(r0)
            goto Lc8
        Lc4:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            throw r4
        Lc8:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        Lcb:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameViewModel.publishGameState(org.wikipedia.games.db.DailyGameHistory, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class LastPlayedInfo {
        public static final Companion Companion = new Companion();
        public final String gamePlayDate;
        public final String sessionDate;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return OnThisDayGameViewModel$LastPlayedInfo$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ LastPlayedInfo(int i, String str, String str2) {
            if (3 != (i & 3)) {
                TuplesKt.throwMissingFieldException(i, 3, OnThisDayGameViewModel$LastPlayedInfo$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.gamePlayDate = str;
            this.sessionDate = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LastPlayedInfo)) {
                return false;
            }
            LastPlayedInfo lastPlayedInfo = (LastPlayedInfo) obj;
            return Intrinsics.areEqual(this.gamePlayDate, lastPlayedInfo.gamePlayDate) && Intrinsics.areEqual(this.sessionDate, lastPlayedInfo.sessionDate);
        }

        public final int hashCode() {
            return this.sessionDate.hashCode() + (this.gamePlayDate.hashCode() * 31);
        }

        public final String toString() {
            return Modifier.CC.m("LastPlayedInfo(gamePlayDate=", this.gamePlayDate, ", sessionDate=", this.sessionDate, ")");
        }

        public LastPlayedInfo(String str, String str2) {
            this.gamePlayDate = str;
            this.sessionDate = str2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class GameStatistics {
        public static final Companion Companion = new Companion();
        public final Double averageScore;
        public final int bestStreak;
        public final int currentStreak;
        public final int totalGamesPlayed;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return OnThisDayGameViewModel$GameStatistics$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ GameStatistics(int i, int i2, Double d, int i3, int i4) {
            if ((i & 1) == 0) {
                this.totalGamesPlayed = 0;
            } else {
                this.totalGamesPlayed = i2;
            }
            if ((i & 2) == 0) {
                this.averageScore = null;
            } else {
                this.averageScore = d;
            }
            if ((i & 4) == 0) {
                this.currentStreak = 0;
            } else {
                this.currentStreak = i3;
            }
            if ((i & 8) == 0) {
                this.bestStreak = 0;
            } else {
                this.bestStreak = i4;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GameStatistics)) {
                return false;
            }
            GameStatistics gameStatistics = (GameStatistics) obj;
            return this.totalGamesPlayed == gameStatistics.totalGamesPlayed && Intrinsics.areEqual(this.averageScore, gameStatistics.averageScore) && this.currentStreak == gameStatistics.currentStreak && this.bestStreak == gameStatistics.bestStreak;
        }

        public final int hashCode() {
            int i = this.totalGamesPlayed * 31;
            Double d = this.averageScore;
            return ((((i + (d == null ? 0 : d.hashCode())) * 31) + this.currentStreak) * 31) + this.bestStreak;
        }

        public final String toString() {
            return "GameStatistics(totalGamesPlayed=" + this.totalGamesPlayed + ", averageScore=" + this.averageScore + ", currentStreak=" + this.currentStreak + ", bestStreak=" + this.bestStreak + ")";
        }

        public GameStatistics(int i, Double d, int i2, int i3) {
            this.totalGamesPlayed = i;
            this.averageScore = d;
            this.currentStreak = i2;
            this.bestStreak = i3;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class QuestionState {
        public static final Companion Companion = new Companion();
        public final int day;
        public final OnThisDay.Event event1;
        public final OnThisDay.Event event2;
        public final boolean goToNext;
        public final int month;
        public final Integer yearSelected;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return OnThisDayGameViewModel$QuestionState$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ QuestionState(int i, OnThisDay.Event event, OnThisDay.Event event2, int i2, int i3, Integer num, boolean z) {
            if (3 != (i & 3)) {
                TuplesKt.throwMissingFieldException(i, 3, OnThisDayGameViewModel$QuestionState$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.event1 = event;
            this.event2 = event2;
            if ((i & 4) == 0) {
                this.month = 0;
            } else {
                this.month = i2;
            }
            if ((i & 8) == 0) {
                this.day = 0;
            } else {
                this.day = i3;
            }
            if ((i & 16) == 0) {
                this.yearSelected = null;
            } else {
                this.yearSelected = num;
            }
            if ((i & 32) == 0) {
                this.goToNext = false;
            } else {
                this.goToNext = z;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof QuestionState)) {
                return false;
            }
            QuestionState questionState = (QuestionState) obj;
            return Intrinsics.areEqual(this.event1, questionState.event1) && Intrinsics.areEqual(this.event2, questionState.event2) && this.month == questionState.month && this.day == questionState.day && Intrinsics.areEqual(this.yearSelected, questionState.yearSelected) && this.goToNext == questionState.goToNext;
        }

        public final int hashCode() {
            int hashCode = (((((this.event2.hashCode() + (this.event1.hashCode() * 31)) * 31) + this.month) * 31) + this.day) * 31;
            Integer num = this.yearSelected;
            return ((hashCode + (num == null ? 0 : num.hashCode())) * 31) + (this.goToNext ? 1231 : 1237);
        }

        public final String toString() {
            return "QuestionState(event1=" + this.event1 + ", event2=" + this.event2 + ", month=" + this.month + ", day=" + this.day + ", yearSelected=" + this.yearSelected + ", goToNext=" + this.goToNext + ")";
        }

        public QuestionState(OnThisDay.Event event, OnThisDay.Event event2, int i, int i2, Integer num, boolean z) {
            event.getClass();
            event2.getClass();
            this.event1 = event;
            this.event2 = event2;
            this.month = i;
            this.day = i2;
            this.yearSelected = num;
            this.goToNext = z;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class GameState {
        public final List answerState;
        public final int currentQuestionIndex;
        public final QuestionState currentQuestionState;
        public final String gamePlayDate;
        public final String lastActiveDate;
        public final int status;
        public final int totalQuestions;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(18)), null, null, null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return OnThisDayGameViewModel$GameState$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ GameState(int i, int i2, int i3, List list, QuestionState questionState, int i4, String str, String str2) {
            if (8 != (i & 8)) {
                TuplesKt.throwMissingFieldException(i, 8, OnThisDayGameViewModel$GameState$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            if ((i & 1) == 0) {
                Prefs prefs = Prefs.INSTANCE;
                i2 = Prefs.getOtdGameQuestionsPerDay();
            }
            this.totalQuestions = i2;
            if ((i & 2) == 0) {
                this.currentQuestionIndex = 0;
            } else {
                this.currentQuestionIndex = i3;
            }
            if ((i & 4) == 0) {
                ArrayList arrayList = new ArrayList(5);
                for (int i5 = 0; i5 < 5; i5++) {
                    arrayList.add(Boolean.FALSE);
                }
                this.answerState = arrayList;
            } else {
                this.answerState = list;
            }
            this.currentQuestionState = questionState;
            if ((i & 16) == 0) {
                this.status = 0;
            } else {
                this.status = i4;
            }
            if ((i & 32) == 0) {
                this.gamePlayDate = "";
            } else {
                this.gamePlayDate = str;
            }
            if ((i & 64) == 0) {
                this.lastActiveDate = "";
            } else {
                this.lastActiveDate = str2;
            }
        }

        public static GameState copy$default(GameState gameState, int i, List list, QuestionState questionState, int i2) {
            int i3 = gameState.totalQuestions;
            if ((i2 & 2) != 0) {
                i = gameState.currentQuestionIndex;
            }
            int i4 = i;
            if ((i2 & 4) != 0) {
                list = gameState.answerState;
            }
            List list2 = list;
            if ((i2 & 8) != 0) {
                questionState = gameState.currentQuestionState;
            }
            QuestionState questionState2 = questionState;
            int i5 = gameState.status;
            String str = gameState.gamePlayDate;
            String str2 = gameState.lastActiveDate;
            gameState.getClass();
            list2.getClass();
            questionState2.getClass();
            str.getClass();
            str2.getClass();
            return new GameState(i3, i4, list2, questionState2, i5, str, str2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GameState)) {
                return false;
            }
            GameState gameState = (GameState) obj;
            return this.totalQuestions == gameState.totalQuestions && this.currentQuestionIndex == gameState.currentQuestionIndex && Intrinsics.areEqual(this.answerState, gameState.answerState) && Intrinsics.areEqual(this.currentQuestionState, gameState.currentQuestionState) && this.status == gameState.status && Intrinsics.areEqual(this.gamePlayDate, gameState.gamePlayDate) && Intrinsics.areEqual(this.lastActiveDate, gameState.lastActiveDate);
        }

        public final int hashCode() {
            return this.lastActiveDate.hashCode() + Animation.CC.m((((this.currentQuestionState.hashCode() + Modifier.CC.m(((this.totalQuestions * 31) + this.currentQuestionIndex) * 31, 31, this.answerState)) * 31) + this.status) * 31, 31, this.gamePlayDate);
        }

        public final String toString() {
            StringBuilder m = Animation.CC.m(this.totalQuestions, this.currentQuestionIndex, "GameState(totalQuestions=", ", currentQuestionIndex=", ", answerState=");
            m.append(this.answerState);
            m.append(", currentQuestionState=");
            m.append(this.currentQuestionState);
            m.append(", status=");
            m.append(this.status);
            m.append(", gamePlayDate=");
            m.append(this.gamePlayDate);
            m.append(", lastActiveDate=");
            return Animation.CC.m(m, this.lastActiveDate, ")");
        }

        public GameState(int i, int i2, List list, QuestionState questionState, int i3, String str, String str2) {
            list.getClass();
            this.totalQuestions = i;
            this.currentQuestionIndex = i2;
            this.answerState = list;
            this.currentQuestionState = questionState;
            this.status = i3;
            this.gamePlayDate = str;
            this.lastActiveDate = str2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [java.util.ArrayList] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ GameState(int r10, java.util.List r11, org.wikipedia.games.onthisday.OnThisDayGameViewModel.QuestionState r12, int r13, int r14) {
            /*
                r9 = this;
                org.wikipedia.settings.Prefs r0 = org.wikipedia.settings.Prefs.INSTANCE
                int r2 = org.wikipedia.settings.Prefs.getOtdGameQuestionsPerDay()
                r0 = r14 & 2
                r1 = 0
                if (r0 == 0) goto Ld
                r3 = r1
                goto Le
            Ld:
                r3 = r10
            Le:
                r10 = r14 & 4
                if (r10 == 0) goto L23
                java.util.ArrayList r11 = new java.util.ArrayList
                r10 = 5
                r11.<init>(r10)
                r0 = r1
            L19:
                if (r0 >= r10) goto L23
                java.lang.Boolean r4 = java.lang.Boolean.FALSE
                r11.add(r4)
                int r0 = r0 + 1
                goto L19
            L23:
                r4 = r11
                r10 = r14 & 16
                if (r10 == 0) goto L2a
                r6 = r1
                goto L2b
            L2a:
                r6 = r13
            L2b:
                java.lang.String r7 = ""
                r8 = r7
                r1 = r9
                r5 = r12
                r1.<init>(r2, r3, r4, r5, r6, r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameState.<init>(int, java.util.List, org.wikipedia.games.onthisday.OnThisDayGameViewModel$QuestionState, int, int):void");
        }
    }
}
