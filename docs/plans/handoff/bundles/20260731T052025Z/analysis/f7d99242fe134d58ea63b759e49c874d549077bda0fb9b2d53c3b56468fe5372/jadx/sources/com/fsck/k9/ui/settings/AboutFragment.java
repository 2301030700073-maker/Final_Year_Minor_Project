package com.fsck.k9.ui.settings;

import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import app.k9mail.provider.K9AppNameProvider;
import com.fsck.k9.R;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AboutFragment extends Fragment {
    public final Lazy appNameProvider$delegate;
    public final Lazy themeProvider$delegate;
    public final Lazy viewModel$delegate;

    public AboutFragment() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.ui.settings.AboutFragment$special$$inlined$inject$default$1
            public final /* synthetic */ AboutFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                AboutFragment aboutFragment = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(AboutViewModel.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.themeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.appNameProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.settings.AboutFragment$special$$inlined$inject$default$1
            public final /* synthetic */ AboutFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                AboutFragment aboutFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(AboutViewModel.class), null, null);
                }
            }
        });
        final int i3 = 2;
        this.viewModel$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.settings.AboutFragment$special$$inlined$inject$default$1
            public final /* synthetic */ AboutFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                AboutFragment aboutFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(aboutFragment).resolve(Reflection.getOrCreateKotlinClass(AboutViewModel.class), null, null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i;
        layoutInflater.getClass();
        ComposeView composeView = new ComposeView(requireContext(), null, 0, 6, null);
        composeView.setViewCompositionStrategy(AndroidFontResourceLoader.INSTANCE);
        Context requireContext = requireContext();
        TypedValue typedValue = new TypedValue();
        int i2 = (!requireContext.getTheme().resolveAttribute(R.attr.appLogo, typedValue, true) || (i = typedValue.resourceId) == 0) ? 0 : i;
        String string = composeView.getContext().getString(R.string.about_title, ((K9AppNameProvider) ((AppNameProvider) this.appNameProvider$delegate.getValue())).getAppName());
        string.getClass();
        String string2 = composeView.getContext().getString(R.string.about_project_title);
        string2.getClass();
        String string3 = composeView.getContext().getString(R.string.about_libraries);
        string3.getClass();
        composeView.setContent(new ComposableLambdaImpl(-110181855, new CardKt$$ExternalSyntheticLambda0(this, composeView, string, string2, string3, i2, 9), true));
        return composeView;
    }
}
