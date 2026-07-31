package org.wikipedia.readinglist.recommended;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.paging.HintHandler;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.android.material.snackbar.Snackbar;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\n²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002²\u0006\u0012\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\nX\u008a\u0084\u0002"}, d2 = {"Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/activity/BaseActivity$Callback;", "<init>", "()V", "Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;", "uiState", "Lorg/wikipedia/util/Resource;", "", "resetUiState", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RecommendedReadingListSettingsActivity extends BaseActivity implements BaseActivity.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public RecommendedReadingListSource currentRecommendedReadingListSource;
    public final ActivityResultRegistry$register$2 recommendedReadingListInterestsLauncher;
    public final ActivityResultRegistry$register$2 recommendedReadingListSourceLauncher;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[RecommendedReadingListUpdateFrequency.values().length];
            try {
                iArr[RecommendedReadingListUpdateFrequency.DAILY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RecommendedReadingListUpdateFrequency.WEEKLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RecommendedReadingListUpdateFrequency.MONTHLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[RecommendedReadingListSource.values().length];
            try {
                iArr2[RecommendedReadingListSource.INTERESTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[RecommendedReadingListSource.READING_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[RecommendedReadingListSource.HISTORY.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public RecommendedReadingListSettingsActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(RecommendedReadingListSettingsViewModel.class), new Function0(this) { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ RecommendedReadingListSettingsActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return recommendedReadingListSettingsActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return recommendedReadingListSettingsActivity.getViewModelStore();
                    default:
                        return recommendedReadingListSettingsActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ RecommendedReadingListSettingsActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return recommendedReadingListSettingsActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return recommendedReadingListSettingsActivity.getViewModelStore();
                    default:
                        return recommendedReadingListSettingsActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ RecommendedReadingListSettingsActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return recommendedReadingListSettingsActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return recommendedReadingListSettingsActivity.getViewModelStore();
                    default:
                        return recommendedReadingListSettingsActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        int i4 = 3;
        this.recommendedReadingListSourceLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ RecommendedReadingListSettingsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i5;
                int i6 = i;
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i6) {
                    case 0:
                        int i7 = RecommendedReadingListSettingsActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity.getViewModel();
                            Prefs prefs = Prefs.INSTANCE;
                            viewModel.updateRecommendedReadingListSource(Prefs.getRecommendedReadingListSource());
                            List recommendedReadingListSourceTitlesWithOffset = Prefs.getRecommendedReadingListSourceTitlesWithOffset();
                            RecommendedReadingListSource recommendedReadingListSource = recommendedReadingListSettingsActivity.currentRecommendedReadingListSource;
                            if (recommendedReadingListSource == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("currentRecommendedReadingListSource");
                                throw null;
                            }
                            if (recommendedReadingListSource != Prefs.getRecommendedReadingListSource()) {
                                RecommendedReadingListSource recommendedReadingListSource2 = Prefs.getRecommendedReadingListSource();
                                Regex$$ExternalSyntheticLambda0 regex$$ExternalSyntheticLambda0 = new Regex$$ExternalSyntheticLambda0(28, recommendedReadingListSettingsActivity, recommendedReadingListSourceTitlesWithOffset);
                                int i8 = RecommendedReadingListSettingsActivity.WhenMappings.$EnumSwitchMapping$1[recommendedReadingListSource2.ordinal()];
                                if (i8 == 1) {
                                    i5 = R.string.recommended_reading_list_settings_updates_base_snackbar_interests;
                                } else if (i8 == 2) {
                                    i5 = R.string.recommended_reading_list_settings_updates_base_snackbar_saved;
                                } else {
                                    if (i8 != 3) {
                                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                                        return;
                                    }
                                    i5 = R.string.recommended_reading_list_settings_updates_base_snackbar_history;
                                }
                                String string = recommendedReadingListSettingsActivity.getString(i5);
                                string.getClass();
                                Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(recommendedReadingListSettingsActivity, string, 0, 12);
                                makeSnackbar$default.setAction(R.string.recommended_reading_list_settings_updates_base_snackbar_action, new DiffLineView$$ExternalSyntheticLambda0(19, regex$$ExternalSyntheticLambda0));
                                makeSnackbar$default.show();
                                PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                                Prefs.setRecommendedReadingListSourceTitlesWithOffset(EmptyList.INSTANCE);
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            RecommendedReadingListSettingsViewModel viewModel2 = recommendedReadingListSettingsActivity.getViewModel();
                            Prefs prefs2 = Prefs.INSTANCE;
                            viewModel2.updateRecommendedReadingListSource(Prefs.getRecommendedReadingListSource());
                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i4));
        this.recommendedReadingListInterestsLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ RecommendedReadingListSettingsActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i5;
                int i6 = i2;
                RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i6) {
                    case 0:
                        int i7 = RecommendedReadingListSettingsActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity.getViewModel();
                            Prefs prefs = Prefs.INSTANCE;
                            viewModel.updateRecommendedReadingListSource(Prefs.getRecommendedReadingListSource());
                            List recommendedReadingListSourceTitlesWithOffset = Prefs.getRecommendedReadingListSourceTitlesWithOffset();
                            RecommendedReadingListSource recommendedReadingListSource = recommendedReadingListSettingsActivity.currentRecommendedReadingListSource;
                            if (recommendedReadingListSource == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("currentRecommendedReadingListSource");
                                throw null;
                            }
                            if (recommendedReadingListSource != Prefs.getRecommendedReadingListSource()) {
                                RecommendedReadingListSource recommendedReadingListSource2 = Prefs.getRecommendedReadingListSource();
                                Regex$$ExternalSyntheticLambda0 regex$$ExternalSyntheticLambda0 = new Regex$$ExternalSyntheticLambda0(28, recommendedReadingListSettingsActivity, recommendedReadingListSourceTitlesWithOffset);
                                int i8 = RecommendedReadingListSettingsActivity.WhenMappings.$EnumSwitchMapping$1[recommendedReadingListSource2.ordinal()];
                                if (i8 == 1) {
                                    i5 = R.string.recommended_reading_list_settings_updates_base_snackbar_interests;
                                } else if (i8 == 2) {
                                    i5 = R.string.recommended_reading_list_settings_updates_base_snackbar_saved;
                                } else {
                                    if (i8 != 3) {
                                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                                        return;
                                    }
                                    i5 = R.string.recommended_reading_list_settings_updates_base_snackbar_history;
                                }
                                String string = recommendedReadingListSettingsActivity.getString(i5);
                                string.getClass();
                                Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(recommendedReadingListSettingsActivity, string, 0, 12);
                                makeSnackbar$default.setAction(R.string.recommended_reading_list_settings_updates_base_snackbar_action, new DiffLineView$$ExternalSyntheticLambda0(19, regex$$ExternalSyntheticLambda0));
                                makeSnackbar$default.show();
                                PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                                Prefs.setRecommendedReadingListSourceTitlesWithOffset(EmptyList.INSTANCE);
                                return;
                            }
                            return;
                        }
                        return;
                    default:
                        int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            RecommendedReadingListSettingsViewModel viewModel2 = recommendedReadingListSettingsActivity.getViewModel();
                            Prefs prefs2 = Prefs.INSTANCE;
                            viewModel2.updateRecommendedReadingListSource(Prefs.getRecommendedReadingListSource());
                            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i4));
    }

    public final RecommendedReadingListSettingsViewModel getViewModel() {
        return (RecommendedReadingListSettingsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.callback = this;
        EdgeToEdge.enable$default(this);
        Window window = getWindow();
        HintHandler hintHandler = new HintHandler(getWindow().getDecorView());
        int i = Build.VERSION.SDK_INT;
        UtilsKt windowInsetsControllerCompat$Impl35 = i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(!Jsoup.getInstance().currentTheme.isDark());
        WikiGamesEvent.submit$default("impression", "discover_settings", null, null, null, null, null, null, 508);
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new FeedComponentsKt$$ExternalSyntheticLambda2(4, this), true, 1642440976));
    }

    @Override // org.wikipedia.activity.BaseActivity.Callback
    public final void onPermissionResult(BaseActivity baseActivity, boolean z) {
        if (!z) {
            getViewModel().toggleNotification(false);
        } else {
            RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(this);
            getViewModel().toggleNotification(true);
        }
    }

    public final void requestPermissionAndScheduleRecommendedReadingNotification() {
        if (Build.VERSION.SDK_INT < 33) {
            RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(this);
            getViewModel().toggleNotification(true);
        } else if (FileUtil.checkSelfPermission(this, "android.permission.POST_NOTIFICATIONS") != 0) {
            this.requestPermissionLauncher.launch("android.permission.POST_NOTIFICATIONS", null);
        } else {
            RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(this);
            getViewModel().toggleNotification(true);
        }
    }
}
