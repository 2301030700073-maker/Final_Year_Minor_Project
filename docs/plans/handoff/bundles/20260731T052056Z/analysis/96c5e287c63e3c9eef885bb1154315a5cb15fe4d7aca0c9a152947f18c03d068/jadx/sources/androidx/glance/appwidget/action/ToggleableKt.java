package androidx.glance.appwidget.action;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.os.StrictMode;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$2$1;
import androidx.glance.action.Action;
import androidx.glance.action.ActionParameters$Key;
import androidx.glance.action.LambdaAction;
import androidx.glance.action.MutableActionParameters;
import androidx.glance.appwidget.TranslationContext;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ToggleableKt {
    public static final ActionParameters$Key ToggleableStateKey = new ActionParameters$Key("android.widget.extra.CHECKED");

    public static Intent applyTrampolineIntent$default(Intent intent, TranslationContext translationContext, int i, ActionTrampolineType actionTrampolineType) {
        Intent intent2 = new Intent(translationContext.context, (Class<?>) (actionTrampolineType == ActionTrampolineType.ACTIVITY ? ActionTrampolineActivity.class : InvisibleActionTrampolineActivity.class));
        intent2.setData(createUniqueUri(translationContext, i, actionTrampolineType, ""));
        intent2.putExtra("ACTION_TYPE", actionTrampolineType.name());
        intent2.putExtra("ACTION_INTENT", intent);
        return intent2;
    }

    public static Intent createIntent$glance_appwidget_release(Context context, Class cls, int i, MutableActionParameters mutableActionParameters) {
        Intent putExtra = new Intent(context, (Class<?>) ActionCallbackBroadcastReceiver.class).setPackage(context.getPackageName()).putExtra("ActionCallbackBroadcastReceiver:callbackClass", cls.getCanonicalName()).putExtra("ActionCallbackBroadcastReceiver:appWidgetId", i);
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(mutableActionParameters.map);
        ArrayList arrayList = new ArrayList(unmodifiableMap.size());
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            ActionParameters$Key actionParameters$Key = (ActionParameters$Key) entry.getKey();
            arrayList.add(new Pair(actionParameters$Key.name, entry.getValue()));
        }
        Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        putExtra.putExtra("ActionCallbackBroadcastReceiver:parameters", UStringsKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length)));
        return putExtra;
    }

    public static final Uri createUniqueUri(TranslationContext translationContext, int i, ActionTrampolineType actionTrampolineType, String str) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("glance-action");
        builder.path(actionTrampolineType.name());
        builder.appendQueryParameter("appWidgetId", String.valueOf(translationContext.appWidgetId));
        builder.appendQueryParameter("viewId", String.valueOf(i));
        builder.appendQueryParameter("viewSize", DpSize.m713toStringimpl(translationContext.layoutSize));
        builder.appendQueryParameter("extraData", str);
        if (translationContext.isLazyCollectionDescendant) {
            builder.appendQueryParameter("lazyCollection", String.valueOf(translationContext.layoutCollectionViewId));
            builder.appendQueryParameter("lazeViewItem", String.valueOf(-1));
        }
        return builder.build();
    }

    public static final Intent getFillInIntentForAction(Action action, TranslationContext translationContext, int i, Function1 function1) {
        int i2 = translationContext.appWidgetId;
        if (action instanceof RunCallbackAction) {
            int i3 = ActionCallbackBroadcastReceiver.$r8$clinit;
            RunCallbackAction runCallbackAction = (RunCallbackAction) action;
            return applyTrampolineIntent$default(createIntent$glance_appwidget_release(translationContext.context, runCallbackAction.callbackClass, i2, (MutableActionParameters) function1.invoke(runCallbackAction.parameters)), translationContext, i, ActionTrampolineType.BROADCAST);
        }
        if (!(action instanceof LambdaAction)) {
            Gson$$ExternalSyntheticBUOutline0.m$8("Cannot create fill-in Intent for action type: ", action);
            return null;
        }
        ComponentName componentName = translationContext.actionBroadcastReceiver;
        if (componentName != null) {
            return applyTrampolineIntent$default(new Intent().setComponent(componentName).setAction("ACTION_TRIGGER_LAMBDA").putExtra("EXTRA_ACTION_KEY", (String) null).putExtra("EXTRA_APPWIDGET_ID", i2), translationContext, i, ActionTrampolineType.BROADCAST);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("In order to use LambdaAction, actionBroadcastReceiver must be provided");
        return null;
    }

    public static final PendingIntent getPendingIntentForAction(Action action, TranslationContext translationContext, int i, Function1 function1) {
        int i2 = translationContext.appWidgetId;
        Context context = translationContext.context;
        if (action instanceof RunCallbackAction) {
            int i3 = ActionCallbackBroadcastReceiver.$r8$clinit;
            RunCallbackAction runCallbackAction = (RunCallbackAction) action;
            Intent createIntent$glance_appwidget_release = createIntent$glance_appwidget_release(context, runCallbackAction.callbackClass, i2, (MutableActionParameters) function1.invoke(runCallbackAction.parameters));
            createIntent$glance_appwidget_release.setData(createUniqueUri(translationContext, i, ActionTrampolineType.CALLBACK, ""));
            return PendingIntent.getBroadcast(context, 0, createIntent$glance_appwidget_release, 201326592);
        }
        if (!(action instanceof LambdaAction)) {
            Gson$$ExternalSyntheticBUOutline0.m$8("Cannot create PendingIntent for action type: ", action);
            return null;
        }
        ComponentName componentName = translationContext.actionBroadcastReceiver;
        if (componentName == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("In order to use LambdaAction, actionBroadcastReceiver must be provided");
            return null;
        }
        Intent putExtra = new Intent().setComponent(componentName).setAction("ACTION_TRIGGER_LAMBDA").putExtra("EXTRA_ACTION_KEY", (String) null).putExtra("EXTRA_APPWIDGET_ID", i2);
        putExtra.setData(createUniqueUri(translationContext, i, ActionTrampolineType.CALLBACK, null));
        return PendingIntent.getBroadcast(context, 0, putExtra, 201326592);
    }

    public static final void launchTrampolineAction(Activity activity, Intent intent) {
        StrictMode.VmPolicy build;
        Parcelable parcelableExtra = intent.getParcelableExtra("ACTION_INTENT");
        if (parcelableExtra == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("List adapter activity trampoline invoked without specifying target intent.");
            return;
        }
        Intent intent2 = (Intent) parcelableExtra;
        if (intent.hasExtra("android.widget.extra.CHECKED")) {
            intent2.putExtra("android.widget.extra.CHECKED", intent.getBooleanExtra("android.widget.extra.CHECKED", false));
        }
        String stringExtra = intent.getStringExtra("ACTION_TYPE");
        if (stringExtra == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("List adapter activity trampoline invoked without trampoline type");
            return;
        }
        AndroidDialog_androidKt$Dialog$2$1 androidDialog_androidKt$Dialog$2$1 = new AndroidDialog_androidKt$Dialog$2$1(stringExtra, activity, intent2, intent.getBundleExtra("ACTIVITY_OPTIONS"), 1);
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (Build.VERSION.SDK_INT >= 31) {
            build = StrictModeVmPolicyApi31Impl.INSTANCE.permitUnsafeIntentLaunch(new StrictMode.VmPolicy.Builder(vmPolicy)).build();
        } else {
            build = new StrictMode.VmPolicy.Builder().build();
        }
        StrictMode.setVmPolicy(build);
        androidDialog_androidKt$Dialog$2$1.invoke();
        StrictMode.setVmPolicy(vmPolicy);
        activity.finish();
    }
}
