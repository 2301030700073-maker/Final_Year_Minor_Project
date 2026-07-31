package org.wikipedia.main;

import android.content.res.TypedArray;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentContainerView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentOnThisDayGamePlayBinding;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.games.onthisday.OnThisDayGameActivity;
import org.wikipedia.games.onthisday.OnThisDayGamePlayFragment;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.places.PlacesFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda0 implements View.OnApplyWindowInsetsListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj;
                int i2 = MainActivity.$r8$clinit;
                view.getClass();
                windowInsets.getClass();
                WindowInsetsCompat.Impl impl = WindowInsetsCompat.toWindowInsetsCompat(view, windowInsets).mImpl;
                Insets insets = impl.getInsets(1);
                insets.getClass();
                mainActivity.statusBarInsets = insets;
                Insets insets2 = impl.getInsets(2);
                insets2.getClass();
                mainActivity.navBarInsets = insets2;
                mainActivity.applyInsets();
                WindowInsets windowInsets2 = WindowInsetsCompat.CONSUMED.toWindowInsets();
                windowInsets2.getClass();
                return windowInsets2;
            case 1:
                OnThisDayGameActivity onThisDayGameActivity = (OnThisDayGameActivity) obj;
                int i3 = OnThisDayGameActivity.$r8$clinit;
                view.getClass();
                windowInsets.getClass();
                WindowInsetsCompat.Impl impl2 = WindowInsetsCompat.toWindowInsetsCompat(view, windowInsets).mImpl;
                Insets insets3 = impl2.getInsets(1);
                insets3.getClass();
                int i4 = insets3.top;
                Insets insets4 = impl2.getInsets(2);
                insets4.getClass();
                TypedArray obtainStyledAttributes = onThisDayGameActivity.getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
                obtainStyledAttributes.getClass();
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
                obtainStyledAttributes.recycle();
                Request.Builder builder = onThisDayGameActivity.binding;
                if (builder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                AppBarLayout appBarLayout = (AppBarLayout) builder.method;
                appBarLayout.setPadding(appBarLayout.getPaddingLeft(), i4, appBarLayout.getPaddingRight(), appBarLayout.getPaddingBottom());
                Request.Builder builder2 = onThisDayGameActivity.binding;
                if (builder2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                FragmentContainerView fragmentContainerView = (FragmentContainerView) builder2.body;
                ViewGroup.LayoutParams layoutParams = fragmentContainerView.getLayoutParams();
                if (layoutParams == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    return null;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.topMargin = dimensionPixelSize + i4 + insets4.top;
                marginLayoutParams.leftMargin = insets3.left + insets4.left;
                marginLayoutParams.rightMargin = insets3.right + insets4.right;
                fragmentContainerView.setLayoutParams(marginLayoutParams);
                return windowInsets;
            case 2:
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = (OnThisDayGamePlayFragment) obj;
                view.getClass();
                windowInsets.getClass();
                WindowInsetsCompat.Impl impl3 = WindowInsetsCompat.toWindowInsetsCompat(view, windowInsets).mImpl;
                Insets insets5 = impl3.getInsets(1);
                insets5.getClass();
                Insets insets6 = impl3.getInsets(2);
                insets6.getClass();
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = onThisDayGamePlayFragment._binding;
                fragmentOnThisDayGamePlayBinding.getClass();
                ConstraintLayout constraintLayout = fragmentOnThisDayGamePlayBinding.currentQuestionContainer;
                ViewGroup.LayoutParams layoutParams2 = constraintLayout.getLayoutParams();
                if (layoutParams2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    return null;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                marginLayoutParams2.leftMargin = insets5.left + insets6.left;
                marginLayoutParams2.rightMargin = insets5.right + insets6.right;
                constraintLayout.setLayoutParams(marginLayoutParams2);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = onThisDayGamePlayFragment._binding;
                fragmentOnThisDayGamePlayBinding2.getClass();
                FrameLayout frameLayout = fragmentOnThisDayGamePlayBinding2.bottomContent;
                frameLayout.setPadding(frameLayout.getPaddingLeft(), frameLayout.getPaddingTop(), frameLayout.getPaddingRight(), insets5.bottom + insets6.bottom);
                return windowInsets;
            case 3:
                view.getClass();
                windowInsets.getClass();
                Insets insets7 = WindowInsetsCompat.toWindowInsetsCompat(view, windowInsets).mImpl.getInsets(2);
                insets7.getClass();
                ItemNotificationBinding itemNotificationBinding = ((OnThisDayGameResultFragment) obj)._binding;
                itemNotificationBinding.getClass();
                RecyclerView recyclerView = (RecyclerView) itemNotificationBinding.notificationItemSelectedImage;
                recyclerView.setPaddingRelative(recyclerView.getPaddingStart(), recyclerView.getPaddingTop(), recyclerView.getPaddingEnd(), insets7.bottom);
                return windowInsets;
            default:
                PlacesFragment placesFragment = (PlacesFragment) obj;
                String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                view.getClass();
                windowInsets.getClass();
                WindowInsetsCompat.Impl impl4 = WindowInsetsCompat.toWindowInsetsCompat(view, windowInsets).mImpl;
                Insets insets8 = impl4.getInsets(1);
                insets8.getClass();
                Insets insets9 = impl4.getInsets(2);
                insets9.getClass();
                FragmentPlacesBinding fragmentPlacesBinding = placesFragment._binding;
                fragmentPlacesBinding.getClass();
                ViewGroup.LayoutParams layoutParams3 = fragmentPlacesBinding.controlsContainer.getLayoutParams();
                layoutParams3.getClass();
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                marginLayoutParams3.topMargin = insets8.top + insets9.top;
                int i5 = insets8.left + insets9.left;
                marginLayoutParams3.leftMargin = i5;
                int i6 = insets8.right + insets9.right;
                marginLayoutParams3.rightMargin = i6;
                int i7 = insets8.bottom;
                int i8 = insets9.bottom;
                marginLayoutParams3.bottomMargin = i7 + i8;
                FragmentPlacesBinding fragmentPlacesBinding2 = placesFragment._binding;
                fragmentPlacesBinding2.getClass();
                ViewGroup.LayoutParams layoutParams4 = ((ExtendedFloatingActionButton) fragmentPlacesBinding2.myLocationButton).getLayoutParams();
                layoutParams4.getClass();
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                marginLayoutParams4.bottomMargin = Okio__OkioKt.roundedDpToPx(16.0f) + i8;
                marginLayoutParams4.leftMargin = Okio__OkioKt.roundedDpToPx(16.0f) + i5;
                marginLayoutParams4.rightMargin = Okio__OkioKt.roundedDpToPx(16.0f) + i6;
                FragmentPlacesBinding fragmentPlacesBinding3 = placesFragment._binding;
                fragmentPlacesBinding3.getClass();
                ((ExtendedFloatingActionButton) fragmentPlacesBinding3.myLocationButton).setLayoutParams(marginLayoutParams4);
                placesFragment.statusBarInsets = insets8;
                placesFragment.navBarInsets = insets9;
                int i9 = Build.VERSION.SDK_INT;
                WindowInsetsCompat.BuilderImpl builderImpl36 = i9 >= 36 ? new WindowInsetsCompat.BuilderImpl36() : i9 >= 35 ? new WindowInsetsCompat.BuilderImpl35() : i9 >= 34 ? new WindowInsetsCompat.BuilderImpl34() : i9 >= 31 ? new WindowInsetsCompat.BuilderImpl31() : i9 >= 30 ? new WindowInsetsCompat.BuilderImpl30() : i9 >= 29 ? new WindowInsetsCompat.BuilderImpl29() : new WindowInsetsCompat.BuilderImpl20();
                Insets insets10 = placesFragment.navBarInsets;
                insets10.getClass();
                builderImpl36.setInsets(2, insets10);
                WindowInsets windowInsets3 = builderImpl36.build().toWindowInsets();
                return windowInsets3 == null ? windowInsets : windowInsets3;
        }
    }
}
