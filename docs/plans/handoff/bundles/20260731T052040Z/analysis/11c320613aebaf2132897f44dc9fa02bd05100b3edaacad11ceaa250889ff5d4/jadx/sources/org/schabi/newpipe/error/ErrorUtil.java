package org.schabi.newpipe.error;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceManager;
import com.google.android.exoplayer2.C;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.SnackbarContentLayout;
import java.util.Locale;
import org.acra.util.PackageManagerWrapperKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ErrorUtil {
    public static final Companion Companion = new Companion();

    public static final void createNotification(Context context, ErrorInfo errorInfo) {
        Companion.getClass();
        Companion.createNotification(context, errorInfo);
    }

    public static final void showSnackbar(Context context, ErrorInfo errorInfo) {
        Companion.getClass();
        Companion.showSnackbar(context, errorInfo);
    }

    public static final void showUiErrorSnackbar(Fragment fragment, String str, Throwable th) {
        Companion.getClass();
        fragment.getClass();
        th.getClass();
        Companion.showSnackbar(fragment, new ErrorInfo(th, UserAction.UI_ERROR, str, (Integer) null, 24));
    }

    public static final void showUiErrorSnackbar(Context context, String str, Exception exc) {
        Companion.getClass();
        context.getClass();
        Companion.showSnackbar(context, new ErrorInfo(exc, UserAction.UI_ERROR, str, (Integer) null, 24));
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static void createNotification(Context context, ErrorInfo errorInfo) {
            context.getClass();
            errorInfo.getClass();
            NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, context.getString(R.string.error_report_channel_id));
            notificationCompat$Builder.mNotification.icon = R.drawable.ic_bug_report;
            notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(context.getString(R.string.error_report_notification_title));
            notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(errorInfo.message.getText(context));
            notificationCompat$Builder.setFlag(16, true);
            notificationCompat$Builder.mContentIntent = NavUtils.getActivity(context, 0, getErrorActivityIntent(context, errorInfo), C.BUFFER_FLAG_FIRST_SAMPLE);
            NotificationManagerCompat notificationManagerCompat = new NotificationManagerCompat(context);
            if (notificationManagerCompat.areNotificationsEnabled()) {
                notificationManagerCompat.notify(5340681, notificationCompat$Builder.build());
            }
            (Build.VERSION.SDK_INT >= 28 ? PackageManagerWrapperKt.getMainExecutor(context) : new ExecutorCompat$HandlerExecutor(new Handler(context.getMainLooper()), 0)).execute(new AppCompatDelegate$$ExternalSyntheticLambda0(context, 4));
        }

        public static Intent getErrorActivityIntent(Context context, ErrorInfo errorInfo) {
            Intent intent = new Intent(context, (Class<?>) ErrorActivity.class);
            intent.putExtra("error_info", errorInfo);
            intent.addFlags(268435456);
            return intent;
        }

        public static void openActivity(Context context, ErrorInfo errorInfo) {
            context.getClass();
            errorInfo.getClass();
            if (context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0).getBoolean("is_in_background", true)) {
                createNotification(context, errorInfo);
            } else {
                context.startActivity(getErrorActivityIntent(context, errorInfo));
            }
        }

        public static void showSnackbar(Context context, View view, ErrorInfo errorInfo) {
            if (view == null) {
                createNotification(context, errorInfo);
                return;
            }
            context.getClass();
            Snackbar make = Snackbar.make(view, errorInfo.message.getText(context), 0);
            ((SnackbarContentLayout) make.view.getChildAt(0)).getActionView().setTextColor(-256);
            String string = context.getString(R.string.error_snackbar_action);
            string.getClass();
            String upperCase = string.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            make.setAction(upperCase, new VideoPlayerUi$$ExternalSyntheticLambda42(context, errorInfo, 2));
            make.show();
        }

        public static void showSnackbar(Fragment fragment, ErrorInfo errorInfo) {
            fragment.getClass();
            View view = fragment.getView();
            if (view == null && fragment.getActivity() != null) {
                view = fragment.requireActivity().findViewById(android.R.id.content);
            }
            Context requireContext = fragment.requireContext();
            requireContext.getClass();
            showSnackbar(requireContext, view, errorInfo);
        }

        public static void showSnackbar(Context context, ErrorInfo errorInfo) {
            context.getClass();
            Activity activity = context instanceof Activity ? (Activity) context : null;
            showSnackbar(context, activity != null ? activity.findViewById(android.R.id.content) : null, errorInfo);
        }
    }
}
