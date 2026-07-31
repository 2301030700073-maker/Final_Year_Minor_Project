package kotlinx.serialization.json.internal;

import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.lifecycle.ViewModelKt;
import com.google.android.material.internal.ViewUtils;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;
import org.wikipedia.R;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.talk.TalkTopicHolder;
import org.wikipedia.talk.TalkTopicsViewModel;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Composer implements MenuPresenter.Callback, NestedScrollConnection, ViewUtils.OnApplyWindowInsetsListener, PopupMenu$OnMenuItemClickListener {
    public final /* synthetic */ int $r8$classId;
    public final Object writer;
    public boolean writingFirst;

    public Composer(PriorityQueue priorityQueue) {
        this.$r8$classId = 0;
        this.writer = priorityQueue;
        this.writingFirst = true;
    }

    public boolean defaultIsRtl() {
        return this.writingFirst;
    }

    public boolean isRtl(CharSequence charSequence, int i) {
        if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return false;
        }
        if (((TextDirectionHeuristicsCompat.FirstStrong) this.writer) == null) {
            return defaultIsRtl();
        }
        char c = 2;
        for (int i2 = 0; i2 < i && c == 2; i2++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i2));
            Composer composer = TextDirectionHeuristicsCompat.LTR;
            if (directionality != 0) {
                if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case LINEAR_PROGRESS_INDICATOR_VALUE:
                        case 15:
                            break;
                        case LAZY_VERTICAL_GRID_VALUE:
                        case VERTICAL_GRID_ITEM_VALUE:
                            break;
                        default:
                            c = 2;
                            break;
                    }
                }
                c = 0;
            }
            c = 1;
        }
        if (c == 0) {
            return true;
        }
        if (c != 1) {
            return defaultIsRtl();
        }
        return false;
    }

    public void nextItem() {
        this.writingFirst = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009b  */
    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.core.view.WindowInsetsCompat onApplyWindowInsets(android.view.View r17, androidx.core.view.WindowInsetsCompat r18, com.google.android.material.internal.ViewUtils.RelativePadding r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r19
            androidx.core.view.WindowInsetsCompat$Impl r4 = r2.mImpl
            r5 = 519(0x207, float:7.27E-43)
            androidx.core.graphics.Insets r5 = r4.getInsets(r5)
            r6 = 32
            androidx.core.graphics.Insets r4 = r4.getInsets(r6)
            java.lang.Object r6 = r0.writer
            com.google.android.material.bottomsheet.BottomSheetBehavior r6 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r6
            boolean r7 = r6.paddingBottomSystemWindowInsets
            int r8 = r5.top
            int r9 = r5.right
            int r10 = r5.left
            r6.insetTop = r8
            int r8 = r1.getLayoutDirection()
            r12 = 1
            if (r8 != r12) goto L2d
            r8 = r12
            goto L2e
        L2d:
            r8 = 0
        L2e:
            int r13 = r1.getPaddingBottom()
            int r14 = r1.getPaddingLeft()
            int r15 = r1.getPaddingRight()
            if (r7 == 0) goto L45
            int r13 = r2.getSystemWindowInsetBottom()
            r6.insetBottom = r13
            int r11 = r3.bottom
            int r13 = r13 + r11
        L45:
            boolean r11 = r6.paddingLeftSystemWindowInsets
            if (r11 == 0) goto L52
            if (r8 == 0) goto L4e
            int r11 = r3.end
            goto L50
        L4e:
            int r11 = r3.start
        L50:
            int r14 = r11 + r10
        L52:
            boolean r11 = r6.paddingRightSystemWindowInsets
            if (r11 == 0) goto L5f
            if (r8 == 0) goto L5b
            int r3 = r3.start
            goto L5d
        L5b:
            int r3 = r3.end
        L5d:
            int r15 = r3 + r9
        L5f:
            android.view.ViewGroup$LayoutParams r3 = r1.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r3 = (android.view.ViewGroup.MarginLayoutParams) r3
            boolean r8 = r6.marginLeftSystemWindowInsets
            if (r8 == 0) goto L71
            int r8 = r3.leftMargin
            if (r8 == r10) goto L71
            r3.leftMargin = r10
            r11 = r12
            goto L72
        L71:
            r11 = 0
        L72:
            boolean r8 = r6.marginRightSystemWindowInsets
            if (r8 == 0) goto L7d
            int r8 = r3.rightMargin
            if (r8 == r9) goto L7d
            r3.rightMargin = r9
            r11 = r12
        L7d:
            boolean r8 = r6.marginTopSystemWindowInsets
            if (r8 == 0) goto L8a
            int r8 = r3.topMargin
            int r5 = r5.top
            if (r8 == r5) goto L8a
            r3.topMargin = r5
            goto L8b
        L8a:
            r12 = r11
        L8b:
            if (r12 == 0) goto L90
            r1.setLayoutParams(r3)
        L90:
            int r3 = r1.getPaddingTop()
            r1.setPadding(r14, r3, r15, r13)
            boolean r0 = r0.writingFirst
            if (r0 == 0) goto L9f
            int r1 = r4.bottom
            r6.gestureInsetBottom = r1
        L9f:
            if (r7 != 0) goto La5
            if (r0 == 0) goto La4
            goto La5
        La4:
            return r2
        La5:
            r6.updatePeekHeight()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.Composer.onApplyWindowInsets(android.view.View, androidx.core.view.WindowInsetsCompat, com.google.android.material.internal.ViewUtils$RelativePadding):androidx.core.view.WindowInsetsCompat");
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        ActionMenuPresenter actionMenuPresenter;
        ToolbarActionBar toolbarActionBar = (ToolbarActionBar) this.writer;
        if (this.writingFirst) {
            return;
        }
        this.writingFirst = true;
        ActionMenuView actionMenuView = toolbarActionBar.mDecorToolbar.mToolbar.mMenuView;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.mPresenter) != null) {
            actionMenuPresenter.hideOverflowMenu();
            ActionMenuPresenter.OverflowPopup overflowPopup = actionMenuPresenter.mActionButtonPopup;
            if (overflowPopup != null && overflowPopup.isShowing()) {
                overflowPopup.mPopup.dismiss();
            }
        }
        toolbarActionBar.mWindowCallback.onPanelClosed(108, menuBuilder);
        this.writingFirst = false;
    }

    @Override // androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        boolean z = this.writingFirst;
        TalkTopicHolder talkTopicHolder = (TalkTopicHolder) this.writer;
        TalkTopicsViewModel talkTopicsViewModel = talkTopicHolder.viewModel;
        AppCompatActivity appCompatActivity = talkTopicHolder.context;
        Integer valueOf = menuItem != null ? Integer.valueOf(menuItem.getItemId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.menu_mark_as_read) {
            int i = TalkTopicHolder.$r8$clinit;
            talkTopicHolder.markAsSeen(false);
            return true;
        }
        if (valueOf != null && valueOf.intValue() == R.id.menu_subscribe) {
            ThreadItem threadItem = talkTopicHolder.threadItem;
            if (threadItem == null) {
                Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                throw null;
            }
            String str = threadItem.name;
            talkTopicsViewModel.getClass();
            str.getClass();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(talkTopicsViewModel), talkTopicsViewModel.actionHandler, null, new TalkTopicsViewModel$subscribeTopic$1(talkTopicsViewModel, str, z, (Continuation) null), 2);
            int i2 = !z ? R.string.talk_thread_subscribed_to : R.string.talk_thread_unsubscribed_from;
            StringUtil stringUtil = StringUtil.INSTANCE;
            ThreadItem threadItem2 = talkTopicHolder.threadItem;
            if (threadItem2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                throw null;
            }
            CharSequence trim = StringsKt.trim(StringUtil.fromHtml(threadItem2.html));
            if (trim.length() == 0) {
                trim = appCompatActivity.getString(R.string.talk_no_subject);
                trim.getClass();
            }
            String string = appCompatActivity.getString(i2, trim);
            string.getClass();
            ShareUtil.showMessage(appCompatActivity, string, 0);
            return true;
        }
        if (valueOf == null || valueOf.intValue() != R.id.menu_share) {
            return false;
        }
        ThreadItem threadItem3 = talkTopicHolder.threadItem;
        if (threadItem3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
            throw null;
        }
        String str2 = threadItem3.html;
        if (str2.length() == 0) {
            str2 = appCompatActivity.getString(R.string.talk_no_subject);
            str2.getClass();
        }
        String string2 = appCompatActivity.getString(R.string.talk_share_discussion_subject, str2);
        string2.getClass();
        String uri = talkTopicsViewModel.pageTitle.getUri();
        StringUtil stringUtil2 = StringUtil.INSTANCE;
        ThreadItem threadItem4 = talkTopicHolder.threadItem;
        if (threadItem4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
            throw null;
        }
        ShareUtil.shareText(appCompatActivity, string2, uri + "#" + StringUtil.addUnderscores(threadItem4.html));
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        ((ToolbarActionBar) this.writer).mWindowCallback.onMenuOpened(108, menuBuilder);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo2onPostFlingRZ2iAVY(long r5, long r7, kotlin.coroutines.Continuation r9) {
        /*
            r4 = this;
            boolean r5 = r9 instanceof androidx.compose.foundation.gestures.ScrollableNestedScrollConnection$onPostFling$1
            if (r5 == 0) goto L13
            r5 = r9
            androidx.compose.foundation.gestures.ScrollableNestedScrollConnection$onPostFling$1 r5 = (androidx.compose.foundation.gestures.ScrollableNestedScrollConnection$onPostFling$1) r5
            int r6 = r5.label
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r6 & r0
            if (r1 == 0) goto L13
            int r6 = r6 - r0
            r5.label = r6
            goto L1a
        L13:
            androidx.compose.foundation.gestures.ScrollableNestedScrollConnection$onPostFling$1 r5 = new androidx.compose.foundation.gestures.ScrollableNestedScrollConnection$onPostFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r9 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r9
            r5.<init>(r4, r9)
        L1a:
            java.lang.Object r6 = r5.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r5.label
            r1 = 1
            if (r0 == 0) goto L32
            if (r0 != r1) goto L2b
            long r7 = r5.J$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4f
        L2b:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r4.writingFirst
            r2 = 0
            if (r6 == 0) goto L57
            java.lang.Object r4 = r4.writer
            androidx.compose.foundation.gestures.ScrollingLogic r4 = (androidx.compose.foundation.gestures.ScrollingLogic) r4
            boolean r6 = r4.isFlinging
            if (r6 == 0) goto L44
            goto L53
        L44:
            r5.J$0 = r7
            r5.label = r1
            java.lang.Object r6 = r4.m99doFlingAnimationQWom1Mo(r7, r5)
            if (r6 != r9) goto L4f
            return r9
        L4f:
            androidx.compose.ui.unit.Velocity r6 = (androidx.compose.ui.unit.Velocity) r6
            long r2 = r6.packedValue
        L53:
            long r2 = androidx.compose.ui.unit.Velocity.m733minusAH228Gc(r7, r2)
        L57:
            androidx.compose.ui.unit.Velocity r4 = new androidx.compose.ui.unit.Velocity
            r4.<init>(r2)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.Composer.mo2onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public long mo3onPostScrollDzOQY0M(int i, long j, long j2) {
        if (!this.writingFirst) {
            return 0L;
        }
        ScrollingLogic scrollingLogic = (ScrollingLogic) this.writer;
        if (scrollingLogic.scrollableState.isScrollInProgress()) {
            return 0L;
        }
        return scrollingLogic.m104toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(scrollingLogic.scrollableState.dispatchRawDelta(scrollingLogic.reverseIfNeeded(scrollingLogic.m103toFloatk4lQ0M(j2)))));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    public Object mo4onPreFlingQWom1Mo(long j, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public /* synthetic */ long mo5onPreScrollOzD1aCk(long j, int i) {
        return 0L;
    }

    public void print(char c) {
        PriorityQueue priorityQueue = (PriorityQueue) this.writer;
        priorityQueue.ensureTotalCapacity(priorityQueue.size, 1);
        char[] cArr = (char[]) priorityQueue.array;
        int i = priorityQueue.size;
        priorityQueue.size = i + 1;
        cArr[i] = c;
    }

    public void printQuoted(String str) {
        int i;
        str.getClass();
        PriorityQueue priorityQueue = (PriorityQueue) this.writer;
        priorityQueue.ensureTotalCapacity(priorityQueue.size, str.length() + 2);
        char[] cArr = (char[]) priorityQueue.array;
        int i2 = priorityQueue.size;
        int i3 = i2 + 1;
        cArr[i2] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, i3);
        int i4 = length + i3;
        int i5 = i3;
        while (i5 < i4) {
            char c = cArr[i5];
            byte[] bArr = StringOpsKt.ESCAPE_MARKERS;
            if (c < bArr.length && bArr[c] != 0) {
                int length2 = str.length();
                for (int i6 = i5 - i3; i6 < length2; i6++) {
                    priorityQueue.ensureTotalCapacity(i5, 2);
                    char charAt = str.charAt(i6);
                    byte[] bArr2 = StringOpsKt.ESCAPE_MARKERS;
                    if (charAt < bArr2.length) {
                        byte b = bArr2[charAt];
                        if (b == 0) {
                            i = i5 + 1;
                            ((char[]) priorityQueue.array)[i5] = charAt;
                        } else {
                            if (b == 1) {
                                String str2 = StringOpsKt.ESCAPE_STRINGS[charAt];
                                str2.getClass();
                                priorityQueue.ensureTotalCapacity(i5, str2.length());
                                str2.getChars(0, str2.length(), (char[]) priorityQueue.array, i5);
                                int length3 = str2.length() + i5;
                                priorityQueue.size = length3;
                                i5 = length3;
                            } else {
                                char[] cArr2 = (char[]) priorityQueue.array;
                                cArr2[i5] = '\\';
                                cArr2[i5 + 1] = (char) b;
                                i5 += 2;
                                priorityQueue.size = i5;
                            }
                        }
                    } else {
                        i = i5 + 1;
                        ((char[]) priorityQueue.array)[i5] = charAt;
                    }
                    i5 = i;
                }
                priorityQueue.ensureTotalCapacity(i5, 1);
                ((char[]) priorityQueue.array)[i5] = '\"';
                priorityQueue.size = i5 + 1;
                return;
            }
            i5++;
        }
        cArr[i4] = '\"';
        priorityQueue.size = i4 + 1;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 6:
                return this.writingFirst ? "FALL_THROUGH" : String.valueOf(this.writer);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ Composer(Object obj, boolean z, int i) {
        this.$r8$classId = i;
        this.writer = obj;
        this.writingFirst = z;
    }

    public /* synthetic */ Composer(int i, Object obj) {
        this.$r8$classId = i;
        this.writer = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Composer(TextDirectionHeuristicsCompat.FirstStrong firstStrong, boolean z) {
        this(3, firstStrong);
        this.$r8$classId = 3;
        this.writingFirst = z;
    }

    public void space() {
    }

    public void unIndent() {
    }

    public void print(byte b) {
        ((PriorityQueue) this.writer).write(String.valueOf(b));
    }

    public void print(short s) {
        ((PriorityQueue) this.writer).write(String.valueOf(s));
    }

    public void print(int i) {
        ((PriorityQueue) this.writer).write(String.valueOf(i));
    }

    public void print(long j) {
        ((PriorityQueue) this.writer).write(String.valueOf(j));
    }
}
