package org.wikipedia.suggestededits;

import android.content.Intent;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import coil3.size.ViewSizeResolver$CC;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.databinding.ViewCustomCalendarDayBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.suggestededits.SuggestedEditsItemFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;", "<init>", "()V", "org/wikipedia/util/TabUtil", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsImageTagEditActivity extends BaseActivity implements SuggestedEditsItemFragment.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ViewCustomCalendarDayBinding binding;
    public MwQueryPage page;
    public SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment;

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    public final String getLangCode() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m();
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    /* renamed from: getSinglePage, reason: from getter */
    public final MwQueryPage getPage() {
        return this.page;
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    public final void nextPage(Fragment fragment) {
        setResult(-1, new Intent().putExtra("intentAction", DescriptionEditActivity.Action.ADD_IMAGE_TAGS));
        finish();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0106  */
    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.SuggestedEditsImageTagEditActivity.onCreate(android.os.Bundle):void");
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment.Callback
    public final void updateActionButton() {
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding = this.binding;
        if (viewCustomCalendarDayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ImageView imageView = viewCustomCalendarDayBinding.dayCircleBackground;
        TypedValue typedValue = new TypedValue();
        if (!getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
            return;
        }
        imageView.setBackgroundColor(typedValue.data);
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding2 = this.binding;
        if (viewCustomCalendarDayBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        FrameLayout frameLayout = viewCustomCalendarDayBinding2.rootView;
        SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment = this.suggestedEditsImageTagsFragment;
        if (suggestedEditsImageTagsFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("suggestedEditsImageTagsFragment");
            throw null;
        }
        frameLayout.setEnabled(suggestedEditsImageTagsFragment.publishEnabled());
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding3 = this.binding;
        if (viewCustomCalendarDayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ImageView imageView2 = viewCustomCalendarDayBinding3.dayCircleBackground;
        SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment2 = this.suggestedEditsImageTagsFragment;
        if (suggestedEditsImageTagsFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("suggestedEditsImageTagsFragment");
            throw null;
        }
        imageView2.setEnabled(suggestedEditsImageTagsFragment2.publishEnabled());
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding4 = this.binding;
        if (viewCustomCalendarDayBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        FrameLayout frameLayout2 = viewCustomCalendarDayBinding4.rootView;
        SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment3 = this.suggestedEditsImageTagsFragment;
        if (suggestedEditsImageTagsFragment3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("suggestedEditsImageTagsFragment");
            throw null;
        }
        frameLayout2.setAlpha(suggestedEditsImageTagsFragment3.publishEnabled() ? 1.0f : 0.5f);
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding5 = this.binding;
        if (viewCustomCalendarDayBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ImageView imageView3 = viewCustomCalendarDayBinding5.dayCircleBackground;
        SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment4 = this.suggestedEditsImageTagsFragment;
        if (suggestedEditsImageTagsFragment4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("suggestedEditsImageTagsFragment");
            throw null;
        }
        imageView3.setAlpha(suggestedEditsImageTagsFragment4.publishEnabled() ? 1.0f : 0.5f);
        boolean z = getResources().getConfiguration().orientation == 2;
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding6 = this.binding;
        if (z) {
            if (viewCustomCalendarDayBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            viewCustomCalendarDayBinding6.rootView.setVisibility(8);
            ViewCustomCalendarDayBinding viewCustomCalendarDayBinding7 = this.binding;
            if (viewCustomCalendarDayBinding7 != null) {
                viewCustomCalendarDayBinding7.dayCircleBackground.setVisibility(0);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (viewCustomCalendarDayBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        viewCustomCalendarDayBinding6.rootView.setVisibility(0);
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding8 = this.binding;
        if (viewCustomCalendarDayBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        viewCustomCalendarDayBinding8.dayCircleBackground.setVisibility(8);
        ViewCustomCalendarDayBinding viewCustomCalendarDayBinding9 = this.binding;
        if (viewCustomCalendarDayBinding9 != null) {
            viewCustomCalendarDayBinding9.dayText.setText(getString(R.string.description_edit_save));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }
}
