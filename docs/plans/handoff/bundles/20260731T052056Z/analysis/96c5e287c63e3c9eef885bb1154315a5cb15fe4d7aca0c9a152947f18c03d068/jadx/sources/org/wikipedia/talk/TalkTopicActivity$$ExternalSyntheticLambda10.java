package org.wikipedia.talk;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.content.res.CamUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;
import java.util.function.IntConsumer;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import org.wikipedia.databinding.ViewMainDrawerBinding;
import org.wikipedia.edit.SyntaxHighlightableEditText;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.views.LanguageScrollView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTopicActivity$$ExternalSyntheticLambda10 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ TalkTopicActivity$$ExternalSyntheticLambda10(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TabLayout.Tab tabAt;
        int i = this.$r8$classId;
        final int i2 = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                TalkTopicActivity talkTopicActivity = (TalkTopicActivity) obj;
                int i3 = TalkTopicActivity.$r8$clinit;
                if (talkTopicActivity.isDestroyed()) {
                    return;
                }
                Request.Builder builder = talkTopicActivity.binding;
                if (builder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                final RecyclerView recyclerView = (RecyclerView) builder.headers;
                recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.wikipedia.views.ViewUtil$jumpToPositionWithoutAnimation$1
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        int i4 = i2;
                        RecyclerView recyclerView2 = RecyclerView.this;
                        recyclerView2.scrollToPosition(i4);
                        recyclerView2.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                });
                talkTopicActivity.threadAdapter.notifyItemChanged(i2);
                return;
            case 1:
                ((IntConsumer) obj).accept(i2);
                return;
            case 2:
                ((CamUtils) obj).onFontRetrievalFailed(i2);
                return;
            case 3:
                int[] iArr = MaterialButton.CHECKABLE_STATE_SET;
                ((MaterialButton) obj).setIconSize(i2);
                return;
            case 4:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                WeakReference weakReference = sideSheetBehavior.viewRef;
                View view = weakReference != null ? (View) weakReference.get() : null;
                if (view != null) {
                    sideSheetBehavior.startSettling$1(view, i2, false);
                    return;
                }
                return;
            case 5:
                SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) obj;
                int i4 = SyntaxHighlightableEditText.$r8$clinit;
                if (!syntaxHighlightableEditText.isAttachedToWindow() || syntaxHighlightableEditText.getLayout() == null) {
                    return;
                }
                syntaxHighlightableEditText.allowScrollToCursor = true;
                syntaxHighlightableEditText.bringPointIntoView(i2);
                return;
            case 6:
                OnThisDayFragment onThisDayFragment = (OnThisDayFragment) obj;
                if (!onThisDayFragment.isAdded() || i2 == -1 || onThisDayFragment.getViewModel().year == -1) {
                    return;
                }
                ViewMainDrawerBinding viewMainDrawerBinding = onThisDayFragment._binding;
                viewMainDrawerBinding.getClass();
                ((RecyclerView) viewMainDrawerBinding.mainDrawerTalkContainer).scrollToPosition(i2);
                return;
            default:
                LanguageScrollView languageScrollView = (LanguageScrollView) obj;
                int i5 = LanguageScrollView.$r8$clinit;
                if (!languageScrollView.isAttachedToWindow() || (tabAt = ((TabLayout) languageScrollView.binding.delegate).getTabAt(i2)) == null) {
                    return;
                }
                tabAt.select();
                return;
        }
    }
}
