package org.wikipedia.games.onthisday;

import android.content.DialogInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AlertController;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$1;
import androidx.room.Room;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.games.onthisday.OnThisDayGameNotificationState;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/activity/BaseActivity$Callback;", "<init>", "()V", "org/wikipedia/games/onthisday/OnThisDayGameProvider", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnThisDayGameActivity extends BaseActivity implements BaseActivity.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Request.Builder binding;
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(7, this);
    public final Request.Builder viewModel$delegate;

    public OnThisDayGameActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(OnThisDayGameViewModel.class), new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ OnThisDayGameActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                OnThisDayGameActivity onThisDayGameActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return onThisDayGameActivity.getViewModelStore();
                    default:
                        return onThisDayGameActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ OnThisDayGameActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                OnThisDayGameActivity onThisDayGameActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return onThisDayGameActivity.getViewModelStore();
                    default:
                        return onThisDayGameActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ OnThisDayGameActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                OnThisDayGameActivity onThisDayGameActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return onThisDayGameActivity.getViewModelStore();
                    default:
                        return onThisDayGameActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    public final OnThisDayGameViewModel getViewModel() {
        return (OnThisDayGameViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Fragment onThisDayGameMainMenuFragment;
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_on_this_day_game, (ViewGroup) null, false);
        int i = R.id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) Room.findChildViewById(inflate, R.id.app_bar_layout);
        if (appBarLayout != null) {
            i = R.id.dateText;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.dateText);
            if (textView != null) {
                i = R.id.fragmentContainer;
                FragmentContainerView fragmentContainerView = (FragmentContainerView) Room.findChildViewById(inflate, R.id.fragmentContainer);
                if (fragmentContainerView != null) {
                    MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                    if (materialToolbar != null) {
                        this.binding = new Request.Builder((CoordinatorLayout) inflate, appBarLayout, textView, fragmentContainerView, materialToolbar);
                        int i2 = 1;
                        setRequestedOrientation(1);
                        EdgeToEdge.enable$default(this);
                        if (Build.VERSION.SDK_INT >= 29) {
                            getWindow().setNavigationBarContrastEnforced(false);
                        }
                        this.callback = this;
                        getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
                        Request.Builder builder = this.binding;
                        if (builder == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        setContentView((CoordinatorLayout) builder.url);
                        Request.Builder builder2 = this.binding;
                        if (builder2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        setSupportActionBar((MaterialToolbar) builder2.tags);
                        ContextsKt supportActionBar = getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.setDisplayHomeAsUpEnabled(true);
                        }
                        setTitle("");
                        Request.Builder builder3 = this.binding;
                        if (builder3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((CoordinatorLayout) builder3.url).setOnApplyWindowInsetsListener(new MainActivity$$ExternalSyntheticLambda0(i2, this));
                        if (bundle == null) {
                            if (getIntent().getIntExtra("gameStatus", -1) == 1) {
                                Constants.InvokeSource invokeSource = getViewModel().invokeSource;
                                invokeSource.getClass();
                                onThisDayGameMainMenuFragment = new OnThisDayGameResultFragment();
                                onThisDayGameMainMenuFragment.setArguments(UStringsKt.bundleOf(new Pair("invokeSource", invokeSource)));
                            } else {
                                Constants.InvokeSource invokeSource2 = getViewModel().invokeSource;
                                invokeSource2.getClass();
                                onThisDayGameMainMenuFragment = new OnThisDayGameMainMenuFragment();
                                onThisDayGameMainMenuFragment.setArguments(UStringsKt.bundleOf(new Pair("invokeSource", invokeSource2)));
                            }
                            BackStackRecord backStackRecord = new BackStackRecord(getSupportFragmentManager());
                            backStackRecord.replace(R.id.fragmentContainer, onThisDayGameMainMenuFragment, null);
                            backStackRecord.addToBackStack();
                            backStackRecord.commit();
                        }
                        Request.Builder builder4 = this.binding;
                        if (builder4 != null) {
                            ((TextView) builder4.headers).setVisibility(8);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                    }
                    i = R.id.toolbar;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_on_this_day_game, menu);
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        OnThisDayGameNotificationState onThisDayGameNotificationState;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        final int i = 1;
        if (itemId == 16908332) {
            getOnBackPressedDispatcher().onBackPressed();
            return true;
        }
        if (itemId == R.id.menu_learn_more) {
            WikiGamesEvent.submit$default(984, Boolean.valueOf(getViewModel().isArchiveGame), null, "about_click", "game_play", getViewModel().getCurrentScreenName(), null, null);
            String string = getString(R.string.on_this_day_game_wiki_url);
            string.getClass();
            Uri parse = Uri.parse(string);
            parse.getClass();
            UriUtil.visitInExternalBrowser(this, parse);
            return true;
        }
        final int i2 = 2;
        if (itemId == R.id.menu_report_feature) {
            WikiGamesEvent.submit$default(984, Boolean.valueOf(getViewModel().isArchiveGame), null, "report_click", "game_play", getViewModel().getCurrentScreenName(), null, null);
            String string2 = getString(R.string.on_this_day_game_report_email_subject);
            string2.getClass();
            String string3 = getString(R.string.on_this_day_game_report_email_body);
            string3.getClass();
            ShareUtil.composeEmail$default(this, null, string2, string3, 2);
            return true;
        }
        if (itemId != R.id.menu_notifications) {
            if (itemId != R.id.menu_volume) {
                return super.onOptionsItemSelected(menuItem);
            }
            Prefs prefs = Prefs.INSTANCE;
            PrefsIoUtil.setBoolean(R.string.preference_key_otd_sound_on, !Prefs.isOtdSoundOn());
            invalidateOptionsMenu();
            return true;
        }
        WikiGamesEvent.submit$default(984, Boolean.valueOf(getViewModel().isArchiveGame), null, "notification_click", "game_play", getViewModel().getCurrentScreenName(), null, null);
        Prefs prefs2 = Prefs.INSTANCE;
        String string4 = PrefsIoUtil.getString(R.string.preference_key_otd_notification_state, null);
        if (string4 == null || (onThisDayGameNotificationState = OnThisDayGameNotificationState.valueOf(string4)) == null) {
            onThisDayGameNotificationState = OnThisDayGameNotificationState.NO_INTERACTED;
        }
        int i3 = OnThisDayGameNotificationManager$WhenMappings.$EnumSwitchMapping$0[onThisDayGameNotificationState.ordinal()];
        final int i4 = 3;
        if (i3 == 1) {
            WikiGamesEvent.submit$default(1016, null, null, "impression", "notification_modal", "game_end", null, null);
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, R.style.AlertDialogTheme_Icon);
            materialAlertDialogBuilder.setTitle(R.string.on_this_day_game_turn_off_notification_dialog_title);
            materialAlertDialogBuilder.setMessage(R.string.on_this_day_game_turn_off_notification_dialog_subtitle);
            ((AlertController.AlertParams) materialAlertDialogBuilder.array).mIconId = R.drawable.outline_notifications_off_24;
            materialAlertDialogBuilder.setPositiveButton(R.string.on_this_day_game_turn_off_notification_dialog_positive_btn_label, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameNotificationManager$$ExternalSyntheticLambda0
                public final /* synthetic */ OnThisDayGameActivity f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    int i6 = i2;
                    OnThisDayGameActivity onThisDayGameActivity = this.f$0;
                    switch (i6) {
                        case 0:
                            WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                            NodeUtils.enableNotifications(onThisDayGameActivity, true);
                            break;
                        case 1:
                            WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                            Prefs prefs3 = Prefs.INSTANCE;
                            Prefs.setOtdNotificationState(OnThisDayGameNotificationState.DISABLED);
                            onThisDayGameActivity.invalidateOptionsMenu();
                            break;
                        case 2:
                            WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                            Prefs prefs4 = Prefs.INSTANCE;
                            Prefs.setOtdNotificationState(OnThisDayGameNotificationState.ENABLED);
                            onThisDayGameActivity.invalidateOptionsMenu();
                            break;
                        default:
                            WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                            NodeUtils.disableNotifications(onThisDayGameActivity, true);
                            break;
                    }
                }
            });
            materialAlertDialogBuilder.setNegativeButton(R.string.on_this_day_game_turn_off_notification_dialog_negative_btn_label, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameNotificationManager$$ExternalSyntheticLambda0
                public final /* synthetic */ OnThisDayGameActivity f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    int i6 = i4;
                    OnThisDayGameActivity onThisDayGameActivity = this.f$0;
                    switch (i6) {
                        case 0:
                            WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                            NodeUtils.enableNotifications(onThisDayGameActivity, true);
                            break;
                        case 1:
                            WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                            Prefs prefs3 = Prefs.INSTANCE;
                            Prefs.setOtdNotificationState(OnThisDayGameNotificationState.DISABLED);
                            onThisDayGameActivity.invalidateOptionsMenu();
                            break;
                        case 2:
                            WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                            Prefs prefs4 = Prefs.INSTANCE;
                            Prefs.setOtdNotificationState(OnThisDayGameNotificationState.ENABLED);
                            onThisDayGameActivity.invalidateOptionsMenu();
                            break;
                        default:
                            WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                            NodeUtils.disableNotifications(onThisDayGameActivity, true);
                            break;
                    }
                }
            });
            materialAlertDialogBuilder.show();
            return true;
        }
        final int i5 = 0;
        if (i3 != 2 && i3 != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return false;
        }
        WikiGamesEvent.submit$default(1016, null, null, "impression", "notification_modal", "game_end", null, null);
        MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(this, R.style.AlertDialogTheme_Icon);
        materialAlertDialogBuilder2.setTitle(R.string.on_this_day_game_turn_on_notification_dialog_title);
        materialAlertDialogBuilder2.setMessage(R.string.on_this_day_game_turn_on_notification_dialog_subtitle);
        ((AlertController.AlertParams) materialAlertDialogBuilder2.array).mIconId = R.drawable.outline_notifications_active_24;
        materialAlertDialogBuilder2.setPositiveButton(R.string.on_this_day_game_turn_on_notification_dialog_positive_btn_label, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameNotificationManager$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGameActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i52) {
                int i6 = i5;
                OnThisDayGameActivity onThisDayGameActivity = this.f$0;
                switch (i6) {
                    case 0:
                        WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                        NodeUtils.enableNotifications(onThisDayGameActivity, true);
                        break;
                    case 1:
                        WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                        Prefs prefs3 = Prefs.INSTANCE;
                        Prefs.setOtdNotificationState(OnThisDayGameNotificationState.DISABLED);
                        onThisDayGameActivity.invalidateOptionsMenu();
                        break;
                    case 2:
                        WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                        Prefs prefs4 = Prefs.INSTANCE;
                        Prefs.setOtdNotificationState(OnThisDayGameNotificationState.ENABLED);
                        onThisDayGameActivity.invalidateOptionsMenu();
                        break;
                    default:
                        WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                        NodeUtils.disableNotifications(onThisDayGameActivity, true);
                        break;
                }
            }
        });
        materialAlertDialogBuilder2.setNegativeButton(R.string.on_this_day_game_turn_on_notification_dialog_negative_btn_label, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameNotificationManager$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGameActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i52) {
                int i6 = i;
                OnThisDayGameActivity onThisDayGameActivity = this.f$0;
                switch (i6) {
                    case 0:
                        WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                        NodeUtils.enableNotifications(onThisDayGameActivity, true);
                        break;
                    case 1:
                        WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                        Prefs prefs3 = Prefs.INSTANCE;
                        Prefs.setOtdNotificationState(OnThisDayGameNotificationState.DISABLED);
                        onThisDayGameActivity.invalidateOptionsMenu();
                        break;
                    case 2:
                        WikiGamesEvent.submit$default(1016, null, null, "on_click", "notification_modal", "game_end", null, null);
                        Prefs prefs4 = Prefs.INSTANCE;
                        Prefs.setOtdNotificationState(OnThisDayGameNotificationState.ENABLED);
                        onThisDayGameActivity.invalidateOptionsMenu();
                        break;
                    default:
                        WikiGamesEvent.submit$default(1016, null, null, "off_click", "notification_modal", "game_end", null, null);
                        NodeUtils.disableNotifications(onThisDayGameActivity, true);
                        break;
                }
            }
        });
        materialAlertDialogBuilder2.show();
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity.Callback
    public final void onPermissionResult(BaseActivity baseActivity, boolean z) {
        if (z) {
            NodeUtils.scheduleDailyGameNotification(this);
        }
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        OnThisDayGameNotificationState onThisDayGameNotificationState;
        int i;
        menu.getClass();
        MenuItem findItem = menu.findItem(R.id.menu_notifications);
        MenuItem findItem2 = menu.findItem(R.id.menu_volume);
        Prefs prefs = Prefs.INSTANCE;
        int i2 = Prefs.isOtdSoundOn() ? R.drawable.volume_off_24dp : R.drawable.volume_up_24dp;
        String string = getString(Prefs.isOtdSoundOn() ? R.string.on_this_day_game_sound_off : R.string.on_this_day_game_sound_on);
        string.getClass();
        findItem2.setIcon(i2);
        findItem2.setTitle(string);
        if (getViewModel()._gameState.getValue() instanceof OnThisDayGameViewModel.GameEnded) {
            if (findItem != null) {
                findItem.setVisible(true);
            }
            if (findItem != null) {
                String string2 = PrefsIoUtil.getString(R.string.preference_key_otd_notification_state, null);
                if (string2 == null || (onThisDayGameNotificationState = OnThisDayGameNotificationState.valueOf(string2)) == null) {
                    onThisDayGameNotificationState = OnThisDayGameNotificationState.NO_INTERACTED;
                }
                onThisDayGameNotificationState.getClass();
                int i3 = OnThisDayGameNotificationState.WhenMappings.$EnumSwitchMapping$0[onThisDayGameNotificationState.ordinal()];
                if (i3 == 1) {
                    i = R.drawable.outline_notification_add_24;
                } else if (i3 == 2) {
                    i = R.drawable.outline_notifications_active_24;
                } else {
                    if (i3 != 3) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return false;
                    }
                    i = R.drawable.outline_notifications_off_24;
                }
                findItem.setIcon(i);
            }
        } else if (findItem != null) {
            findItem.setVisible(false);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    public final void showAppBarDateText() {
        Request.Builder builder = this.binding;
        if (builder != null) {
            ((TextView) builder.headers).setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }
}
