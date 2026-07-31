package org.wikipedia.util;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.LabeledIntent;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.os.TransactionTooLargeException;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.skydoves.balloon.ArrowOrientation;
import com.skydoves.balloon.ArrowOrientationRules;
import com.skydoves.balloon.ArrowPositionRules;
import com.skydoves.balloon.Balloon;
import com.skydoves.balloon.Balloon$$ExternalSyntheticLambda8;
import com.skydoves.balloon.BalloonAlign;
import com.skydoves.balloon.BalloonAnimation;
import com.skydoves.balloon.BalloonHighlightAnimation;
import com.skydoves.balloon.BalloonPlacement;
import com.skydoves.balloon.IconGravity;
import com.skydoves.balloon.overlay.BalloonOverlayAnimation;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.json.JSONException;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.createaccount.CreateAccountException;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwException;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet;
import org.wikipedia.login.LoginFailedException;
import org.wikipedia.main.MainActivity;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.suggestededits.SuggestionsActivity;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.util.log.L;
import org.wikipedia.views.AppTextView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShareUtil {
    public static final FeedbackUtil$$ExternalSyntheticLambda0 TOOLBAR_ON_CLICK_LISTENER = new FeedbackUtil$$ExternalSyntheticLambda0(0);
    public static final ShareUtil INSTANCE = new ShareUtil();

    public static void composeEmail$default(Context context, String str, String str2, String str3, int i) {
        if ((i & 2) != 0) {
            str = context.getString(R.string.support_email);
            str.getClass();
        }
        if ((i & 4) != 0) {
            str2 = "";
        }
        if ((i & 8) != 0) {
            str3 = "";
        }
        Intent action = new Intent().setAction("android.intent.action.SENDTO");
        String encode = Uri.encode(str2);
        String encode2 = Uri.encode(str3);
        StringBuilder m352m = Modifier.CC.m352m("mailto:", str, "?subject=", encode, "&body=");
        m352m.append(encode2);
        Uri parse = Uri.parse(m352m.toString());
        parse.getClass();
        Intent data = action.setData(parse);
        data.getClass();
        try {
            context.startActivity(data);
        } catch (Exception e) {
            L.e(e);
        }
    }

    public static Intent getIntentChooser(Context context, Intent intent, String str) {
        context.getClass();
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
        queryIntentActivities.getClass();
        HashSet hashSet = new HashSet();
        Iterator<T> it = queryIntentActivities.iterator();
        while (it.hasNext()) {
            ActivityInfo activityInfo = ((ResolveInfo) it.next()).activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            String packageName = componentName.getPackageName();
            packageName.getClass();
            Pattern compile = Pattern.compile("org\\.wikipedia.*");
            compile.getClass();
            if (compile.matcher(packageName).matches()) {
                hashSet.add(componentName);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            if (hashSet.size() >= queryIntentActivities.size()) {
                return null;
            }
            return Intent.createChooser(intent, str).putExtra("android.intent.extra.EXCLUDE_COMPONENTS", (Parcelable[]) hashSet.toArray(new ComponentName[0]));
        }
        if (queryIntentActivities.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            ActivityInfo activityInfo2 = resolveInfo.activityInfo;
            if (!hashSet.contains(new ComponentName(activityInfo2.packageName, activityInfo2.name))) {
                Intent component = new Intent(intent).setPackage(activityInfo2.packageName).setComponent(new ComponentName(activityInfo2.packageName, activityInfo2.name));
                component.getClass();
                arrayList.add(new LabeledIntent(component, activityInfo2.packageName, resolveInfo.labelRes, resolveInfo.icon));
            }
        }
        Intent createChooser = Intent.createChooser(new Intent(), str);
        if (createChooser == null) {
            return null;
        }
        createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
        return createChooser;
    }

    public static Balloon getTooltip$default(Context context, String str, boolean z, int i, boolean z2, boolean z3, int i2, int i3, int i4) {
        if ((i4 & 8) != 0) {
            i = 0;
        }
        int i5 = (i4 & 128) != 0 ? R.string.onboarding_got_it : R.string.image_recommendation_tooltip_next;
        if ((i4 & 256) != 0) {
            i2 = 0;
        }
        if ((i4 & 512) != 0) {
            i3 = 0;
        }
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_plain_text_tooltip, (ViewGroup) null, false);
        int i6 = R.id.buttonView;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.buttonView);
        if (materialButton != null) {
            i6 = R.id.countView;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.countView);
            if (textView != null) {
                i6 = R.id.textView;
                AppTextView appTextView = (AppTextView) Room.findChildViewById(inflate, R.id.textView);
                if (appTextView != null) {
                    LinearLayout linearLayout = (LinearLayout) inflate;
                    appTextView.setText(str);
                    materialButton.setVisibility(z3 ? 0 : 8);
                    String string = context.getString(i5);
                    string.getClass();
                    Rect rect = new Rect();
                    materialButton.getPaint().getTextBounds(string, 0, string.length(), rect);
                    ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
                    layoutParams.width = Okio__OkioKt.roundedDpToPx(40.0f) + rect.width();
                    materialButton.setLayoutParams(layoutParams);
                    if (i3 > 0) {
                        textView.setVisibility(0);
                        textView.setText(context.getString(R.string.x_of_y, Integer.valueOf(i2), Integer.valueOf(i3)));
                    }
                    Balloon.Builder builder = new Balloon.Builder();
                    builder.width = Integer.MIN_VALUE;
                    builder.maxWidth = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
                    builder.height = Integer.MIN_VALUE;
                    builder.arrowSize = UnsignedKt.roundToInt(TypedValue.applyDimension(1, 12.0f, Resources.getSystem().getDisplayMetrics()));
                    builder.arrowWidth = Integer.MIN_VALUE;
                    builder.arrowHeight = Integer.MIN_VALUE;
                    builder.arrowPositionRules = ArrowPositionRules.ALIGN_BALLOON;
                    ArrowOrientationRules arrowOrientationRules = ArrowOrientationRules.ALIGN_ANCHOR;
                    builder.arrowOrientationRules = arrowOrientationRules;
                    builder.arrowOrientation = ArrowOrientation.BOTTOM;
                    builder.backgroundColor = -16777216;
                    builder.cornerRadius = TypedValue.applyDimension(1, 5.0f, Resources.getSystem().getDisplayMetrics());
                    builder.iconGravity = IconGravity.START;
                    UnsignedKt.roundToInt(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
                    UnsignedKt.roundToInt(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
                    UnsignedKt.roundToInt(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
                    builder.elevation = TypedValue.applyDimension(1, 2.0f, Resources.getSystem().getDisplayMetrics());
                    builder.dismissWhenTouchOutside = true;
                    builder.balloonAnimation = BalloonAnimation.FADE;
                    builder.balloonOverlayAnimation = BalloonOverlayAnimation.FADE;
                    builder.balloonHighlightAnimation = BalloonHighlightAnimation.NONE;
                    boolean z4 = context.getResources().getConfiguration().getLayoutDirection() == 1;
                    builder.isRtlLayout = z4;
                    builder.supportRtlLayoutFactor = z4 ? -1 : 1;
                    builder.isFocusable = true;
                    Drawable drawable = TuplesKt.getDrawable(context, R.drawable.ic_tooltip_arrow_up);
                    builder.arrowDrawable = drawable != null ? drawable.mutate() : null;
                    if (drawable != null) {
                        if (builder.arrowWidth == Integer.MIN_VALUE && drawable.getIntrinsicWidth() > 0) {
                            builder.arrowWidth = drawable.getIntrinsicWidth();
                        }
                        if (builder.arrowHeight == Integer.MIN_VALUE && drawable.getIntrinsicHeight() > 0) {
                            builder.arrowHeight = drawable.getIntrinsicHeight();
                        }
                        if (builder.arrowSize == Integer.MIN_VALUE) {
                            builder.arrowSize = Math.max(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                        }
                    }
                    ArrowPositionRules arrowPositionRules = ArrowPositionRules.ALIGN_ANCHOR;
                    arrowPositionRules.getClass();
                    builder.arrowPositionRules = arrowPositionRules;
                    arrowOrientationRules.getClass();
                    builder.arrowOrientationRules = arrowOrientationRules;
                    builder.arrowSize = UnsignedKt.roundToInt(TypedValue.applyDimension(1, 16.0f, Resources.getSystem().getDisplayMetrics()));
                    builder.marginLeft = UnsignedKt.roundToInt(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
                    builder.marginRight = UnsignedKt.roundToInt(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
                    builder.marginTop = UnsignedKt.roundToInt(TypedValue.applyDimension(1, RecyclerView.DECELERATION_RATE, Resources.getSystem().getDisplayMetrics()));
                    builder.marginBottom = UnsignedKt.roundToInt(TypedValue.applyDimension(1, RecyclerView.DECELERATION_RATE, Resources.getSystem().getDisplayMetrics()));
                    TypedValue typedValue = new TypedValue();
                    if (!context.getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true)) {
                        typedValue = null;
                    }
                    if (typedValue == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                        return null;
                    }
                    builder.backgroundColor = context.getColor(typedValue.resourceId);
                    builder.dismissWhenTouchOutside = z;
                    if (!z) {
                        builder.isFocusable = z;
                    }
                    linearLayout.getClass();
                    builder.layout = linearLayout;
                    builder.width = UnsignedKt.roundToInt(TypedValue.applyDimension(1, -2.1474836E9f, Resources.getSystem().getDisplayMetrics()));
                    builder.height = UnsignedKt.roundToInt(TypedValue.applyDimension(1, -2.1474836E9f, Resources.getSystem().getDisplayMetrics()));
                    builder.arrowAlignAnchorPadding = UnsignedKt.roundToInt(TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics()));
                    Balloon balloon = new Balloon(context, builder);
                    materialButton.setOnClickListener(new Balloon$$ExternalSyntheticLambda8(balloon, 1));
                    return balloon;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i6)));
        return null;
    }

    public static BottomSheetDialogFragment getTopmostBottomSheetFragment(Fragment fragment) {
        if ((fragment instanceof BottomSheetDialogFragment) && (fragment instanceof OnThisDayGameArticleBottomSheet) && fragment.mView != null) {
            return (BottomSheetDialogFragment) fragment;
        }
        List<Fragment> fragments = fragment.getChildFragmentManager().mFragmentStore.getFragments();
        fragments.getClass();
        for (Fragment fragment2 : fragments) {
            fragment2.getClass();
            if (getTopmostBottomSheetFragment(fragment2) != null) {
                return (BottomSheetDialogFragment) fragment2;
            }
        }
        return null;
    }

    public static boolean isNetworkError(Throwable th) {
        th.getClass();
        return throwableContainsException(UnknownHostException.class, th) || throwableContainsException(TimeoutException.class, th) || throwableContainsException(SSLException.class, th);
    }

    public static Snackbar makeSnackbar(View view, CharSequence charSequence, int i, WikiSite wikiSite) {
        ViewGroup viewGroup;
        charSequence.getClass();
        wikiSite.getClass();
        StringUtil stringUtil = StringUtil.INSTANCE;
        CharSequence trim = StringsKt.trim(StringUtil.fromHtml(charSequence.toString()));
        int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
        View view2 = view;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (view2 instanceof CoordinatorLayout) {
                viewGroup = (ViewGroup) view2;
                break;
            }
            if (view2 instanceof FrameLayout) {
                if (view2.getId() == 16908290) {
                    viewGroup = (ViewGroup) view2;
                    break;
                }
                viewGroup2 = (ViewGroup) view2;
            }
            Object parent = view2.getParent();
            view2 = parent instanceof View ? (View) parent : null;
            if (view2 == null) {
                viewGroup = viewGroup2;
                break;
            }
        }
        if (viewGroup == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("No suitable parent found from the given view. Please provide a valid view.");
            return null;
        }
        Context context = viewGroup.getContext();
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate((resourceId == -1 || resourceId2 == -1) ? R.layout.design_layout_snackbar_include : R.layout.mtrl_layout_snackbar_include, viewGroup, false);
        Snackbar snackbar = new Snackbar(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
        BaseTransientBottomBar.SnackbarBaseLayout snackbarBaseLayout = snackbar.view;
        ((SnackbarContentLayout) snackbarBaseLayout.getChildAt(0)).getMessageView().setText(trim);
        snackbar.duration = i;
        TextView textView = (TextView) snackbarBaseLayout.findViewById(R.id.snackbar_text);
        Context context2 = view.getContext();
        TypedValue m = ViewSizeResolver$CC.m(context2);
        if (!context2.getTheme().resolveAttribute(R.attr.progressive_color, m, true)) {
            m = null;
        }
        if (m == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
            return null;
        }
        textView.setLinkTextColor(m.data);
        int i2 = LinkMovementMethodExt.$r8$clinit;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        LinkMovementMethodExt.ErrorLinkHandler errorLinkHandler = new LinkMovementMethodExt.ErrorLinkHandler(Jsoup.getInstance());
        errorLinkHandler.wikiSite = wikiSite;
        textView.setMovementMethod(new LinkMovementMethodExt(errorLinkHandler));
        if (i == -2) {
            textView.setTextIsSelectable(true);
        }
        return snackbar;
    }

    public static /* synthetic */ Snackbar makeSnackbar$default(Activity activity, CharSequence charSequence, int i, int i2) {
        if ((i2 & 4) != 0) {
            i = 5000;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return makeSnackbar(activity, charSequence, i, Jsoup.getInstance().getWikiSite());
    }

    public static void shareText(Context context, String str, String str2) {
        str.getClass();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        intent.setType("text/plain");
        try {
            Intent intentChooser = getIntentChooser(context, intent, context.getString(R.string.share_via));
            if (intentChooser == null) {
                Toast.makeText(context, R.string.error_can_not_process_link, 1).show();
            } else {
                context.startActivity(intentChooser);
            }
        } catch (TransactionTooLargeException unused) {
            L.logRemoteErrorIfProd(new RuntimeException("Transaction too large for share intent."));
        }
    }

    public static void shareText$default(Context context, PageTitle pageTitle) {
        pageTitle.getClass();
        StringUtil stringUtil = StringUtil.INSTANCE;
        shareText(context, StringUtil.fromHtml(pageTitle.getDisplayText()).toString(), pageTitle.getUri() + "?wprov=" + context.getString(R.string.prov_share_link));
    }

    public static void showError(Activity activity, Throwable th, WikiSite wikiSite) {
        Symbol symbol;
        activity.getClass();
        th.getClass();
        wikiSite.getClass();
        Throwable th2 = th;
        while (th2.getCause() != null) {
            th2 = th2.getCause();
            th2.getClass();
        }
        int i = 0;
        if (isNetworkError(th)) {
            String string = activity.getString(R.string.error_network_error);
            string.getClass();
            activity.getString(R.string.format_error_server_message, th2.getLocalizedMessage());
            symbol = new Symbol(11, string);
        } else if (th instanceof HttpStatusException) {
            HttpStatusException httpStatusException = (HttpStatusException) th;
            String message = httpStatusException.getMessage();
            String.valueOf(httpStatusException.code);
            symbol = new Symbol(11, message);
        } else if ((th2 instanceof LoginFailedException) || (th2 instanceof CreateAccountException) || (th2 instanceof MwException)) {
            String localizedMessage = ((Exception) th2).getLocalizedMessage();
            localizedMessage.getClass();
            symbol = new Symbol(11, localizedMessage);
        } else if (throwableContainsException(JSONException.class, th)) {
            String string2 = activity.getString(R.string.error_response_malformed);
            string2.getClass();
            th2.getLocalizedMessage();
            symbol = new Symbol(11, string2);
        } else {
            String string3 = activity.getString(R.string.error_unknown);
            string3.getClass();
            th2.getLocalizedMessage();
            symbol = new Symbol(11, string3);
        }
        String str = symbol.symbol;
        boolean z = str.length() > 200;
        Snackbar makeSnackbar = makeSnackbar(activity, str, z ? -2 : 5000, wikiSite);
        if (z) {
            makeSnackbar.setAction(android.R.string.ok, new FeedbackUtil$$ExternalSyntheticLambda1(makeSnackbar, i));
        }
        makeSnackbar.show();
    }

    public static /* synthetic */ void showError$default(Activity activity, Throwable th) {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        showError(activity, th, Jsoup.getInstance().getWikiSite());
    }

    public static void showMessage(int i, Fragment fragment) {
        fragment.getClass();
        AppCompatActivity requireActivity = fragment.requireActivity();
        String string = fragment.getString(i);
        string.getClass();
        makeSnackbar$default(requireActivity, string, 0, 8).show();
    }

    public static void showToastOverView(View view, CharSequence charSequence, int i) {
        Toast makeText = Toast.makeText(view.getContext(), charSequence, i);
        View inflate = LayoutInflater.from(view.getContext()).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.message);
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.removeHTMLTags(String.valueOf(charSequence)));
        textView.setMaxLines(Integer.MAX_VALUE);
        makeText.setView(inflate);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        makeText.setGravity(8388659, iArr[0], iArr[1]);
        makeText.show();
    }

    public static Balloon showTooltip$default(Activity activity, View view, String str, boolean z, boolean z2, int i) {
        boolean z3 = (i & 128) != 0 ? z2 : true;
        view.getClass();
        Context context = view.getContext();
        context.getClass();
        Balloon tooltip$default = getTooltip$default(context, str, z2, 0, z, z3, 0, 0, 896);
        if (z) {
            BalloonPlacement balloonPlacement = new BalloonPlacement(view, BalloonAlign.TOP, Okio__OkioKt.roundedDpToPx(8.0f));
            View view2 = balloonPlacement.anchor;
            if (tooltip$default.canShowBalloonWindow(view2)) {
                view2.post(new Processor$$ExternalSyntheticLambda1(tooltip$default, view2, balloonPlacement, 7));
            }
        } else {
            tooltip$default.showAlignBottom(view, -Okio__OkioKt.roundedDpToPx(8.0f));
        }
        if (!z2) {
            BaseActivity baseActivity = (BaseActivity) activity;
            Balloon balloon = baseActivity.currentTooltip;
            if (balloon != null) {
                balloon.dismiss();
            }
            baseActivity.currentTooltip = tooltip$default;
        }
        BreadCrumbLogEvent.Companion.getClass();
        BreadCrumbLogEvent.Companion.logTooltipShown(activity, view);
        return tooltip$default;
    }

    public static boolean throwableContainsException(Class cls, Throwable th) {
        while (th != null) {
            if (cls.isInstance(th)) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getBlockMessageHtml(org.wikipedia.dataclient.mwapi.MwServiceError.BlockInfo r6, org.wikipedia.dataclient.WikiSite r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$1 r0 = (org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$1 r0 = new org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            if (r1 != r2) goto L2a
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4d
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L30:
            kotlin.jvm.internal.Ref$ObjectRef r5 = androidx.compose.animation.core.Animation.CC.m22m(r5)
            java.lang.String r1 = ""
            r5.element = r1
            kotlinx.coroutines.scheduling.DefaultScheduler r1 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$2 r4 = new org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$2
            r4.<init>(r5, r6, r7, r3)
            r0.L$2 = r5
            r0.label = r2
            java.lang.Object r6 = kotlinx.coroutines.AwaitKt.withContext(r1, r4, r0)
            if (r6 != r8) goto L4c
            return r8
        L4c:
            r6 = r5
        L4d:
            java.lang.Object r5 = r6.element
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ShareUtil.getBlockMessageHtml(org.wikipedia.dataclient.mwapi.MwServiceError$BlockInfo, org.wikipedia.dataclient.WikiSite, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static /* synthetic */ Snackbar makeSnackbar$default(View view, String str) {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return makeSnackbar(view, str, 5000, Jsoup.getInstance().getWikiSite());
    }

    public static void showMessage(Fragment fragment, String str) {
        fragment.getClass();
        str.getClass();
        makeSnackbar$default(fragment.requireActivity(), str, 0, 8).show();
    }

    public static void showMessage(Activity activity, int i) {
        activity.getClass();
        String string = activity.getString(i);
        string.getClass();
        showMessage(activity, string, 0);
    }

    public static void showMessage(Activity activity, CharSequence charSequence, int i) {
        activity.getClass();
        charSequence.getClass();
        makeSnackbar$default(activity, charSequence, i, 8).show();
    }

    public static Snackbar makeSnackbar(Activity activity, CharSequence charSequence, int i, WikiSite wikiSite) {
        int i2;
        View requireViewById;
        List fragments;
        activity.getClass();
        charSequence.getClass();
        wikiSite.getClass();
        BottomSheetDialogFragment bottomSheetDialogFragment = null;
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity != null && (fragments = appCompatActivity.getSupportFragmentManager().mFragmentStore.getFragments()) != null) {
            Iterator it = fragments.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Fragment fragment = (Fragment) it.next();
                fragment.getClass();
                BottomSheetDialogFragment topmostBottomSheetFragment = getTopmostBottomSheetFragment(fragment);
                if (topmostBottomSheetFragment != null) {
                    bottomSheetDialogFragment = topmostBottomSheetFragment;
                    break;
                }
            }
        }
        if (bottomSheetDialogFragment != null) {
            requireViewById = bottomSheetDialogFragment.requireView();
        } else {
            if (activity instanceof MainActivity) {
                i2 = R.id.fragment_main_coordinator;
            } else if (activity instanceof PageActivity) {
                i2 = R.id.fragment_page_coordinator;
            } else if (activity instanceof ReadingListActivity) {
                i2 = R.id.fragment_reading_list_coordinator;
            } else if (activity instanceof SuggestionsActivity) {
                i2 = R.id.suggestedEditsCardsCoordinator;
            } else if (activity instanceof EditHistoryListActivity) {
                i2 = R.id.edit_history_coordinator;
            } else {
                i2 = activity instanceof TalkTopicsActivity ? R.id.talkTopicsSnackbar : android.R.id.content;
            }
            requireViewById = ActivityCompat.requireViewById(activity, i2);
            requireViewById.getClass();
        }
        return makeSnackbar(requireViewById, charSequence, i, wikiSite);
    }
}
