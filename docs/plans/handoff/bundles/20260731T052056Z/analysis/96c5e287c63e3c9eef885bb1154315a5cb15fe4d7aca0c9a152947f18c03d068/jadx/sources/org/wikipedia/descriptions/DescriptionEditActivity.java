package org.wikipedia.descriptions;

import android.content.Intent;
import android.os.Bundle;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import coil3.size.ViewSizeResolver$CC;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0006\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/descriptions/DescriptionEditFragment;", "Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;", "<init>", "()V", "Action", "org/wikipedia/util/UriUtil", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditActivity extends SingleFragmentActivity implements DescriptionEditFragment.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Request.Builder viewModel$delegate;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Action {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Action[] $VALUES;
        public static final Action ADD_CAPTION;
        public static final Action ADD_DESCRIPTION;
        public static final Action ADD_IMAGE_TAGS;
        public static final Action IMAGE_RECOMMENDATIONS;
        public static final Action TRANSLATE_CAPTION;
        public static final Action TRANSLATE_DESCRIPTION;
        public static final Action VANDALISM_PATROL;

        static {
            Action action = new Action("ADD_DESCRIPTION", 0);
            ADD_DESCRIPTION = action;
            Action action2 = new Action("TRANSLATE_DESCRIPTION", 1);
            TRANSLATE_DESCRIPTION = action2;
            Action action3 = new Action("ADD_CAPTION", 2);
            ADD_CAPTION = action3;
            Action action4 = new Action("TRANSLATE_CAPTION", 3);
            TRANSLATE_CAPTION = action4;
            Action action5 = new Action("ADD_IMAGE_TAGS", 4);
            ADD_IMAGE_TAGS = action5;
            Action action6 = new Action("IMAGE_RECOMMENDATIONS", 5);
            IMAGE_RECOMMENDATIONS = action6;
            Action action7 = new Action("VANDALISM_PATROL", 6);
            VANDALISM_PATROL = action7;
            Action[] actionArr = {action, action2, action3, action4, action5, action6, action7};
            $VALUES = actionArr;
            $ENTRIES = new EnumEntriesList(actionArr);
        }

        public static Action valueOf(String str) {
            return (Action) Enum.valueOf(Action.class, str);
        }

        public static Action[] values() {
            return (Action[]) $VALUES.clone();
        }
    }

    public DescriptionEditActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(DescriptionEditViewModel.class), new Function0(this) { // from class: org.wikipedia.descriptions.DescriptionEditActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ DescriptionEditActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                DescriptionEditActivity descriptionEditActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return descriptionEditActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return descriptionEditActivity.getViewModelStore();
                    default:
                        return descriptionEditActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.descriptions.DescriptionEditActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ DescriptionEditActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                DescriptionEditActivity descriptionEditActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return descriptionEditActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return descriptionEditActivity.getViewModelStore();
                    default:
                        return descriptionEditActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.descriptions.DescriptionEditActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ DescriptionEditActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                DescriptionEditActivity descriptionEditActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return descriptionEditActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return descriptionEditActivity.getViewModelStore();
                    default:
                        return descriptionEditActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new DescriptionEditFragment();
    }

    public final DescriptionEditViewModel getViewModel() {
        return (DescriptionEditViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new MainActivity$$ExternalSyntheticLambda1(5, this));
        if (getViewModel().action == Action.ADD_DESCRIPTION) {
            Prefs prefs = Prefs.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_description_edit_tutorial_enabled), true)) {
                PrefsIoUtil.setBoolean(R.string.preference_key_description_edit_tutorial_enabled, false);
                Intent putExtra = new Intent(this, (Class<?>) DescriptionEditTutorialActivity.class).putExtra("showAIOnBoarding", true);
                putExtra.getClass();
                startActivity(putExtra);
            }
        }
    }
}
