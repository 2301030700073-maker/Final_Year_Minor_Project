package org.wikipedia.edit.richtext;

import android.os.Build;
import android.widget.ScrollView;
import androidx.activity.ComponentActivity;
import androidx.appcompat.widget.SearchView;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.StandaloneCoroutine;
import org.wikipedia.edit.SyntaxHighlightableEditText;
import org.wikipedia.edit.insertmedia.InsertMediaViewModel;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.gallery.GalleryItemViewModel;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.language.LangLinksViewModel;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.random.RandomViewModel;
import org.wikipedia.readinglist.ReadingListFragmentViewModel;
import org.wikipedia.readinglist.ReadingListItemActionsDialog;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsViewModel;
import org.wikipedia.recurring.RecurringTask;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel;
import org.wikipedia.settings.dev.playground.ReadingChallengePlayGroundDialog;
import org.wikipedia.talk.TalkReplyViewModel;
import org.wikipedia.talk.TalkTopicViewModel;
import org.wikipedia.talk.TalkTopicViewModel$undo$2;
import org.wikipedia.talk.template.TalkTemplatesViewModel;
import org.wikipedia.usercontrib.UserContribListViewModel;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeOnboardingActivity;
import org.wikipedia.yearinreview.YearInReviewOnboardingViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SyntaxHighlighter {
    public final ComponentActivity activity;
    public StandaloneCoroutine currentHighlightJob;
    public boolean enabled;
    public final long highlightDelayMillis;
    public int lastScrollY;
    public final ScrollView scrollView;
    public int searchQueryLength;
    public int searchQueryPositionIndex;
    public List searchQueryPositions;
    public final List syntaxRules;
    public final SyntaxHighlightableEditText textBox;

    public SyntaxHighlighter(ComponentActivity componentActivity, SyntaxHighlightableEditText syntaxHighlightableEditText, ScrollView scrollView, long j) {
        this.activity = componentActivity;
        this.textBox = syntaxHighlightableEditText;
        this.scrollView = scrollView;
        this.highlightDelayMillis = j;
        SyntaxRule syntaxRule = new SyntaxRule("{{{", "}}}", SyntaxRuleStyle.PRE_TEMPLATE);
        SyntaxRule syntaxRule2 = new SyntaxRule("{{", "}}", SyntaxRuleStyle.TEMPLATE);
        SyntaxRule syntaxRule3 = new SyntaxRule("[[", "]]", SyntaxRuleStyle.INTERNAL_LINK);
        SyntaxRule syntaxRule4 = new SyntaxRule("[", "]", SyntaxRuleStyle.EXTERNAL_LINK);
        SyntaxRule syntaxRule5 = new SyntaxRule("<big>", "</big>", SyntaxRuleStyle.TEXT_LARGE);
        SyntaxRule syntaxRule6 = new SyntaxRule("<small>", "</small>", SyntaxRuleStyle.TEXT_SMALL);
        SyntaxRule syntaxRule7 = new SyntaxRule("<sub>", "</sub>", SyntaxRuleStyle.SUBSCRIPT);
        SyntaxRule syntaxRule8 = new SyntaxRule("<sup>", "</sup>", SyntaxRuleStyle.SUPERSCRIPT);
        SyntaxRule syntaxRule9 = new SyntaxRule("<code>", "</code>", Build.VERSION.SDK_INT >= 28 ? SyntaxRuleStyle.CODE : SyntaxRuleStyle.BOLD);
        SyntaxRule syntaxRule10 = new SyntaxRule("<u>", "</u>", SyntaxRuleStyle.UNDERLINE);
        SyntaxRule syntaxRule11 = new SyntaxRule("<s>", "</s>", SyntaxRuleStyle.STRIKETHROUGH);
        SyntaxRule syntaxRule12 = new SyntaxRule("<", ">", SyntaxRuleStyle.REF);
        SyntaxRule syntaxRule13 = new SyntaxRule("'''", "'''", SyntaxRuleStyle.BOLD);
        SyntaxRule syntaxRule14 = new SyntaxRule("''", "''", SyntaxRuleStyle.ITALIC);
        SyntaxRuleStyle syntaxRuleStyle = SyntaxRuleStyle.HEADING_SMALL;
        this.syntaxRules = Room.listOf((Object[]) new SyntaxRule[]{syntaxRule, syntaxRule2, syntaxRule3, syntaxRule4, syntaxRule5, syntaxRule6, syntaxRule7, syntaxRule8, syntaxRule9, syntaxRule10, syntaxRule11, syntaxRule12, syntaxRule13, syntaxRule14, new SyntaxRule("=====", "=====", syntaxRuleStyle), new SyntaxRule("====", "====", syntaxRuleStyle), new SyntaxRule("===", "===", SyntaxRuleStyle.HEADING_MEDIUM), new SyntaxRule("==", "==", SyntaxRuleStyle.HEADING_LARGE)});
        this.lastScrollY = -1;
        this.enabled = true;
        syntaxHighlightableEditText.addTextChangedListener(new SearchView.AnonymousClass10(5, this));
        syntaxHighlightableEditText.setScrollView(scrollView);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(componentActivity), null, null, new AnonymousClass2(0, this, (Continuation) null), 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0067, code lost:
    
        if (highlightOnScroll(r0) == r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(r7.highlightDelayMillis, r0) == r1) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object highlightOnScroll(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof org.wikipedia.edit.richtext.SyntaxHighlighter$highlightOnScroll$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.edit.richtext.SyntaxHighlighter$highlightOnScroll$1 r0 = (org.wikipedia.edit.richtext.SyntaxHighlighter$highlightOnScroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.edit.richtext.SyntaxHighlighter$highlightOnScroll$1 r0 = new org.wikipedia.edit.richtext.SyntaxHighlighter$highlightOnScroll$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6a
        L2a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L31:
            int r2 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5f
        L37:
            kotlin.ResultKt.throwOnFailure(r8)
            android.widget.ScrollView r8 = r7.scrollView
            if (r8 == 0) goto L6a
            int r2 = r7.lastScrollY
            int r5 = r8.getScrollY()
            if (r2 == r5) goto L51
            int r8 = r8.getScrollY()
            r7.lastScrollY = r8
            r5 = 0
            r7.performHighlight(r5)
        L51:
            r2 = 0
            r0.I$0 = r2
            r0.label = r4
            long r4 = r7.highlightDelayMillis
            java.lang.Object r8 = kotlinx.coroutines.AwaitKt.delay(r4, r0)
            if (r8 != r1) goto L5f
            goto L69
        L5f:
            r0.I$0 = r2
            r0.label = r3
            java.lang.Object r7 = r7.highlightOnScroll(r0)
            if (r7 != r1) goto L6a
        L69:
            return r1
        L6a:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.richtext.SyntaxHighlighter.highlightOnScroll(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void performHighlight(long j) {
        StandaloneCoroutine standaloneCoroutine = this.currentHighlightJob;
        Continuation continuation = null;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.currentHighlightJob = AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this.activity), null, null, new TalkTopicViewModel$undo$2(this, j, continuation, 4), 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x00bc, code lost:
    
        if (r3 == r5) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0056, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(r1, r4) == r5) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x006c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runHighlightTasks(long r17, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.richtext.SyntaxHighlighter.runHighlightTasks(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.wikipedia.edit.richtext.SyntaxHighlighter$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public int label;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(RandomViewModel randomViewModel, int i, Continuation continuation) {
            super(2, continuation);
            this.$r8$classId = 7;
            this.this$0 = randomViewModel;
            this.label = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    return new AnonymousClass2(0, (SyntaxHighlighter) obj2, continuation);
                case 1:
                    return new AnonymousClass2(1, (InsertMediaViewModel) obj2, continuation);
                case 2:
                    return new AnonymousClass2(2, (EditSummaryFragment) obj2, continuation);
                case 3:
                    return new AnonymousClass2(3, (GalleryItemViewModel) obj2, continuation);
                case 4:
                    return new AnonymousClass2(4, (OnThisDayGameResultFragment) obj2, continuation);
                case 5:
                    return new AnonymousClass2(5, (LangLinksViewModel) obj2, continuation);
                case 6:
                    return new AnonymousClass2(6, (LoginActivity) obj2, continuation);
                case 7:
                    return new AnonymousClass2((RandomViewModel) obj2, this.label, continuation);
                case 8:
                    return new AnonymousClass2(8, (ReadingListPage) obj2, continuation);
                case 9:
                    return new AnonymousClass2(9, (ReadingListFragmentViewModel) obj2, continuation);
                case 10:
                    return new AnonymousClass2(10, (ReadingListItemActionsDialog) obj2, continuation);
                case 11:
                    return new AnonymousClass2(11, (MutableState) obj2, continuation);
                case 12:
                    return new AnonymousClass2(12, (RecommendedReadingListSettingsViewModel) obj2, continuation);
                case IMAGE_VALUE:
                    return new AnonymousClass2(13, (RecurringTask) obj2, continuation);
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return new AnonymousClass2(14, (CategoryDeveloperPlayGroundViewModel) obj2, continuation);
                case 15:
                    return new AnonymousClass2(15, (ReadingChallengePlayGroundDialog) obj2, continuation);
                case LAZY_VERTICAL_GRID_VALUE:
                    return new AnonymousClass2(16, (TalkReplyViewModel) obj2, continuation);
                case VERTICAL_GRID_ITEM_VALUE:
                    return new AnonymousClass2(17, (TalkTopicViewModel) obj2, continuation);
                case RADIO_GROUP_VALUE:
                    return new AnonymousClass2(18, (TalkTemplatesViewModel) obj2, continuation);
                case RADIO_BUTTON_VALUE:
                    return new AnonymousClass2(19, (UserContribListViewModel) obj2, continuation);
                case RADIO_ROW_VALUE:
                    return new AnonymousClass2(20, (ReadingChallengeOnboardingActivity) obj2, continuation);
                default:
                    return new AnonymousClass2(21, (YearInReviewOnboardingViewModel) obj2, continuation);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            CoroutineScope coroutineScope = (CoroutineScope) obj;
            Continuation continuation = (Continuation) obj2;
            switch (i) {
                case 7:
                    ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(unit);
                    break;
            }
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(unit);
        }

        /* JADX WARN: Code restructure failed: missing block: B:153:0x02a6, code lost:
        
            if (r1 == r0) goto L138;
         */
        /* JADX WARN: Code restructure failed: missing block: B:270:0x0542, code lost:
        
            if (r1 == r0) goto L240;
         */
        /* JADX WARN: Code restructure failed: missing block: B:333:0x0680, code lost:
        
            if (kotlinx.coroutines.AwaitKt.delay(100, r20) == r0) goto L304;
         */
        /* JADX WARN: Code restructure failed: missing block: B:339:0x073c, code lost:
        
            if (kotlinx.coroutines.AwaitKt.delay(1000, r20) == r0) goto L304;
         */
        /* JADX WARN: Code restructure failed: missing block: B:383:0x07c9, code lost:
        
            if (r0 == r11) goto L331;
         */
        /* JADX WARN: Code restructure failed: missing block: B:387:0x07e9, code lost:
        
            if (r0 == r11) goto L331;
         */
        /* JADX WARN: Code restructure failed: missing block: B:405:0x089e, code lost:
        
            if (kotlin.text.StringsKt__StringsJVMKt.replace$default(r10, "\"", "").equals("1") == true) goto L378;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x01bf, code lost:
        
            if (r0 == r11) goto L86;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:?, code lost:
        
            return r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x018e, code lost:
        
            if (r1 == r11) goto L86;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:330:0x0670  */
        /* JADX WARN: Removed duplicated region for block: B:332:0x0678  */
        /* JADX WARN: Removed duplicated region for block: B:336:0x068c  */
        /* JADX WARN: Removed duplicated region for block: B:341:0x0675  */
        /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.coroutines.Continuation] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:289:0x0680 -> B:282:0x0684). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                Method dump skipped, instructions count: 2808
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.richtext.SyntaxHighlighter.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass2(int i, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }
}
