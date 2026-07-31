package com.braze.ui.inappmessage;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.window.OnBackInvokedCallback;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.braze.configuration.BrazeConfigurationProvider;
import com.braze.enums.inappmessage.DismissType;
import com.braze.enums.inappmessage.MessageType;
import com.braze.enums.inappmessage.SlideFrom;
import com.braze.models.inappmessage.IInAppMessage;
import com.braze.models.inappmessage.IInAppMessageImmersive;
import com.braze.models.inappmessage.InAppMessageSlideup;
import com.braze.models.inappmessage.MessageButton;
import com.braze.support.BrazeLogger;
import com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper;
import com.braze.ui.inappmessage.listeners.IInAppMessageViewLifecycleListener;
import com.braze.ui.inappmessage.listeners.SwipeDismissTouchListener;
import com.braze.ui.inappmessage.listeners.TouchAwareSwipeDismissTouchListener;
import com.braze.ui.inappmessage.utils.InAppMessageViewUtils;
import com.braze.ui.inappmessage.views.IInAppMessageImmersiveView;
import com.braze.ui.inappmessage.views.IInAppMessageView;
import com.braze.ui.inappmessage.views.InAppMessageHtmlBaseView;
import com.braze.ui.support.ViewUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DefaultInAppMessageViewWrapper.kt */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 e2\u00020\u0001:\u0001eBe\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020LH\u0016J\b\u0010M\u001a\u00020JH\u0016J\u0010\u0010N\u001a\u00020D2\u0006\u0010K\u001a\u00020LH\u0016J\u0012\u0010O\u001a\u00020P2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J(\u0010Q\u001a\u00020J2\u0006\u0010R\u001a\u00020D2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0014\u0010S\u001a\u00020J2\n\b\u0002\u0010T\u001a\u0004\u0018\u00010UH\u0016J\b\u0010V\u001a\u00020WH\u0016J\b\u0010X\u001a\u00020JH\u0016J\b\u0010Y\u001a\u00020WH\u0016J\b\u0010Z\u001a\u00020JH\u0016J\u0010\u0010[\u001a\u00020J2\u0006\u0010\\\u001a\u00020.H\u0016J\b\u0010]\u001a\u00020JH\u0016J \u0010^\u001a\u00020J2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010_\u001a\u00020`H\u0016J\b\u0010a\u001a\u00020bH\u0016J\u0010\u0010c\u001a\u00020d2\u0006\u0010\\\u001a\u00020.H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\f\u001a\u0004\u0018\u00010\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b\u001f\u0010 R\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0014\"\u0004\b&\u0010 R\u001a\u0010'\u001a\u00020(X\u0096\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001a\u0010-\u001a\u00020.X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010/\"\u0004\b0\u00101R\u001c\u00102\u001a\u0004\u0018\u000103X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001c\u00108\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u0014\"\u0004\b:\u0010 R6\u0010;\u001a\u001e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020=0<j\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020=`>X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001c\u0010C\u001a\u0004\u0018\u00010DX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010H¨\u0006f"}, d2 = {"Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper;", "Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;", "inAppMessageView", "Landroid/view/View;", "inAppMessage", "Lcom/braze/models/inappmessage/IInAppMessage;", "inAppMessageViewLifecycleListener", "Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;", "configurationProvider", "Lcom/braze/configuration/BrazeConfigurationProvider;", "openingAnimation", "Landroid/view/animation/Animation;", "closingAnimation", "clickableInAppMessageView", "buttonViews", "", "closeButton", "<init>", "(Landroid/view/View;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Ljava/util/List;Landroid/view/View;)V", "getInAppMessageView", "()Landroid/view/View;", "getInAppMessage", "()Lcom/braze/models/inappmessage/IInAppMessage;", "getInAppMessageViewLifecycleListener", "()Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;", "getConfigurationProvider", "()Lcom/braze/configuration/BrazeConfigurationProvider;", "getOpeningAnimation", "()Landroid/view/animation/Animation;", "getClosingAnimation", "getClickableInAppMessageView", "setClickableInAppMessageView", "(Landroid/view/View;)V", "getButtonViews", "()Ljava/util/List;", "setButtonViews", "(Ljava/util/List;)V", "getCloseButton", "setCloseButton", "inAppMessageCloser", "Lcom/braze/ui/inappmessage/InAppMessageCloser;", "getInAppMessageCloser$annotations", "()V", "getInAppMessageCloser", "()Lcom/braze/ui/inappmessage/InAppMessageCloser;", "isAnimatingClose", "", "()Z", "setAnimatingClose", "(Z)V", "dismissRunnable", "Ljava/lang/Runnable;", "getDismissRunnable", "()Ljava/lang/Runnable;", "setDismissRunnable", "(Ljava/lang/Runnable;)V", "previouslyFocusedView", "getPreviouslyFocusedView", "setPreviouslyFocusedView", "viewAccessibilityFlagMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getViewAccessibilityFlagMap", "()Ljava/util/HashMap;", "setViewAccessibilityFlagMap", "(Ljava/util/HashMap;)V", "contentViewGroupParentLayout", "Landroid/view/ViewGroup;", "getContentViewGroupParentLayout", "()Landroid/view/ViewGroup;", "setContentViewGroupParentLayout", "(Landroid/view/ViewGroup;)V", TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "", "activity", "Landroid/app/Activity;", "close", "getParentViewGroup", "getLayoutParams", "Landroid/view/ViewGroup$LayoutParams;", "addInAppMessageViewToViewGroup", "parentViewGroup", "announceForAccessibilityIfNecessary", "fallbackAccessibilityMessage", "", "createClickListener", "Landroid/view/View$OnClickListener;", "createButtonClickListeners", "createCloseInAppMessageClickListener", "addDismissRunnable", "setAndStartAnimation", "opening", "closeInAppMessageView", "finalizeViewBeforeDisplay", "createDismissCallbacks", "Lcom/braze/ui/inappmessage/listeners/SwipeDismissTouchListener$DismissCallbacks;", "createTouchAwareListener", "Lcom/braze/ui/inappmessage/listeners/TouchAwareSwipeDismissTouchListener$ITouchListener;", "createAnimationListener", "Landroid/view/animation/Animation$AnimationListener;", "Companion", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public class DefaultInAppMessageViewWrapper implements IInAppMessageViewWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private List<? extends View> buttonViews;
    private View clickableInAppMessageView;
    private View closeButton;
    private final Animation closingAnimation;
    private final BrazeConfigurationProvider configurationProvider;
    private ViewGroup contentViewGroupParentLayout;
    private Runnable dismissRunnable;
    private final IInAppMessage inAppMessage;
    private final InAppMessageCloser inAppMessageCloser;
    private final View inAppMessageView;
    private final IInAppMessageViewLifecycleListener inAppMessageViewLifecycleListener;
    private boolean isAnimatingClose;
    private final Animation openingAnimation;
    private View previouslyFocusedView;
    private HashMap<Integer, Integer> viewAccessibilityFlagMap;

    /* compiled from: DefaultInAppMessageViewWrapper.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MessageType.values().length];
            try {
                iArr[MessageType.MODAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MessageType.FULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MessageType.HTML_FULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MessageType.HTML.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DefaultInAppMessageViewWrapper(View inAppMessageView, IInAppMessage inAppMessage, IInAppMessageViewLifecycleListener inAppMessageViewLifecycleListener, BrazeConfigurationProvider configurationProvider, Animation animation, Animation animation2, View view) {
        this(inAppMessageView, inAppMessage, inAppMessageViewLifecycleListener, configurationProvider, animation, animation2, view, null, null, 384, null);
        Intrinsics.checkNotNullParameter(inAppMessageView, "inAppMessageView");
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(inAppMessageViewLifecycleListener, "inAppMessageViewLifecycleListener");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DefaultInAppMessageViewWrapper(View inAppMessageView, IInAppMessage inAppMessage, IInAppMessageViewLifecycleListener inAppMessageViewLifecycleListener, BrazeConfigurationProvider configurationProvider, Animation animation, Animation animation2, View view, List<? extends View> list) {
        this(inAppMessageView, inAppMessage, inAppMessageViewLifecycleListener, configurationProvider, animation, animation2, view, list, null, 256, null);
        Intrinsics.checkNotNullParameter(inAppMessageView, "inAppMessageView");
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(inAppMessageViewLifecycleListener, "inAppMessageViewLifecycleListener");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
    }

    public static /* synthetic */ void getInAppMessageCloser$annotations() {
    }

    public DefaultInAppMessageViewWrapper(View inAppMessageView, IInAppMessage inAppMessage, IInAppMessageViewLifecycleListener inAppMessageViewLifecycleListener, BrazeConfigurationProvider configurationProvider, Animation animation, Animation animation2, View view, List<? extends View> list, View view2) {
        Intrinsics.checkNotNullParameter(inAppMessageView, "inAppMessageView");
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(inAppMessageViewLifecycleListener, "inAppMessageViewLifecycleListener");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        this.inAppMessageView = inAppMessageView;
        this.inAppMessage = inAppMessage;
        this.inAppMessageViewLifecycleListener = inAppMessageViewLifecycleListener;
        this.configurationProvider = configurationProvider;
        this.openingAnimation = animation;
        this.closingAnimation = animation2;
        this.clickableInAppMessageView = view;
        this.buttonViews = list;
        this.closeButton = view2;
        this.inAppMessageCloser = new InAppMessageCloser(this);
        this.viewAccessibilityFlagMap = new HashMap<>();
        View clickableInAppMessageView = getClickableInAppMessageView();
        setClickableInAppMessageView(clickableInAppMessageView == null ? getInAppMessageView() : clickableInAppMessageView);
        if (getInAppMessage() instanceof InAppMessageSlideup) {
            TouchAwareSwipeDismissTouchListener touchAwareSwipeDismissTouchListener = new TouchAwareSwipeDismissTouchListener(getInAppMessageView(), createDismissCallbacks());
            touchAwareSwipeDismissTouchListener.setTouchListener(createTouchAwareListener());
            View clickableInAppMessageView2 = getClickableInAppMessageView();
            if (clickableInAppMessageView2 != null) {
                clickableInAppMessageView2.setOnTouchListener(touchAwareSwipeDismissTouchListener);
            }
        }
        View clickableInAppMessageView3 = getClickableInAppMessageView();
        if (clickableInAppMessageView3 != null) {
            clickableInAppMessageView3.setOnClickListener(createClickListener());
        }
        View closeButton = getCloseButton();
        if (closeButton != null) {
            closeButton.setOnClickListener(createCloseInAppMessageClickListener());
        }
        createButtonClickListeners();
    }

    public /* synthetic */ DefaultInAppMessageViewWrapper(View view, IInAppMessage iInAppMessage, IInAppMessageViewLifecycleListener iInAppMessageViewLifecycleListener, BrazeConfigurationProvider brazeConfigurationProvider, Animation animation, Animation animation2, View view2, List list, View view3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, iInAppMessage, iInAppMessageViewLifecycleListener, brazeConfigurationProvider, animation, animation2, view2, (i & 128) != 0 ? null : list, (i & 256) != 0 ? null : view3);
    }

    @Override // com.braze.ui.inappmessage.IInAppMessageViewWrapper
    public View getInAppMessageView() {
        return this.inAppMessageView;
    }

    @Override // com.braze.ui.inappmessage.IInAppMessageViewWrapper
    public IInAppMessage getInAppMessage() {
        return this.inAppMessage;
    }

    public IInAppMessageViewLifecycleListener getInAppMessageViewLifecycleListener() {
        return this.inAppMessageViewLifecycleListener;
    }

    public BrazeConfigurationProvider getConfigurationProvider() {
        return this.configurationProvider;
    }

    public Animation getOpeningAnimation() {
        return this.openingAnimation;
    }

    public Animation getClosingAnimation() {
        return this.closingAnimation;
    }

    public View getClickableInAppMessageView() {
        return this.clickableInAppMessageView;
    }

    public void setClickableInAppMessageView(View view) {
        this.clickableInAppMessageView = view;
    }

    public List<View> getButtonViews() {
        return this.buttonViews;
    }

    public void setButtonViews(List<? extends View> list) {
        this.buttonViews = list;
    }

    public View getCloseButton() {
        return this.closeButton;
    }

    public void setCloseButton(View view) {
        this.closeButton = view;
    }

    public InAppMessageCloser getInAppMessageCloser() {
        return this.inAppMessageCloser;
    }

    @Override // com.braze.ui.inappmessage.IInAppMessageViewWrapper
    /* renamed from: isAnimatingClose, reason: from getter */
    public boolean getIsAnimatingClose() {
        return this.isAnimatingClose;
    }

    public void setAnimatingClose(boolean z) {
        this.isAnimatingClose = z;
    }

    public Runnable getDismissRunnable() {
        return this.dismissRunnable;
    }

    public void setDismissRunnable(Runnable runnable) {
        this.dismissRunnable = runnable;
    }

    public View getPreviouslyFocusedView() {
        return this.previouslyFocusedView;
    }

    public void setPreviouslyFocusedView(View view) {
        this.previouslyFocusedView = view;
    }

    public HashMap<Integer, Integer> getViewAccessibilityFlagMap() {
        return this.viewAccessibilityFlagMap;
    }

    public void setViewAccessibilityFlagMap(HashMap<Integer, Integer> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.viewAccessibilityFlagMap = hashMap;
    }

    public ViewGroup getContentViewGroupParentLayout() {
        return this.contentViewGroupParentLayout;
    }

    public void setContentViewGroupParentLayout(ViewGroup viewGroup) {
        this.contentViewGroupParentLayout = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String open$lambda$0() {
        return "Opening in-app message view wrapper";
    }

    @Override // com.braze.ui.inappmessage.IInAppMessageViewWrapper
    public void open(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String open$lambda$0;
                open$lambda$0 = DefaultInAppMessageViewWrapper.open$lambda$0();
                return open$lambda$0;
            }
        }, 6, (Object) null);
        ViewGroup parentViewGroup = getParentViewGroup(activity);
        final int height = parentViewGroup.getHeight();
        if (getConfigurationProvider().isInAppMessageAccessibilityExclusiveModeEnabled()) {
            setContentViewGroupParentLayout(parentViewGroup);
            getViewAccessibilityFlagMap().clear();
            INSTANCE.setAllViewGroupChildrenAsNonAccessibilityImportant(getContentViewGroupParentLayout(), getViewAccessibilityFlagMap());
        }
        setPreviouslyFocusedView(activity.getCurrentFocus());
        if (height == 0) {
            parentViewGroup.addOnLayoutChangeListener(new DefaultInAppMessageViewWrapper$open$2(parentViewGroup, this));
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String open$lambda$1;
                    open$lambda$1 = DefaultInAppMessageViewWrapper.open$lambda$1(height);
                    return open$lambda$1;
                }
            }, 7, (Object) null);
            addInAppMessageViewToViewGroup(parentViewGroup, getInAppMessage(), getInAppMessageView(), getInAppMessageViewLifecycleListener());
        }
        if (!BrazeInAppMessageManager.INSTANCE.getInstance().getDoesBackButtonDismissInAppMessageViewField() || Build.VERSION.SDK_INT < 33) {
            return;
        }
        activity.getOnBackInvokedDispatcher().registerOnBackInvokedCallback(1000000, new OnBackInvokedCallback() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$open$4$dismissInAppMessageCallback$1
            @Override // android.window.OnBackInvokedCallback
            public void onBackInvoked() {
                InAppMessageViewUtils.closeInAppMessageOnKeycodeBack();
                activity.getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String open$lambda$1(int i) {
        return "Detected root view height of " + i;
    }

    @Override // com.braze.ui.inappmessage.IInAppMessageViewWrapper
    public void close() {
        if (getConfigurationProvider().isInAppMessageAccessibilityExclusiveModeEnabled()) {
            INSTANCE.resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto(getContentViewGroupParentLayout(), getViewAccessibilityFlagMap());
        }
        getInAppMessageView().removeCallbacks(getDismissRunnable());
        getInAppMessageViewLifecycleListener().beforeClosed(getInAppMessageView(), getInAppMessage());
        if (getInAppMessage().getAnimateOut()) {
            setAnimatingClose(true);
            setAndStartAnimation(false);
        } else {
            closeInAppMessageView();
        }
    }

    public ViewGroup getParentViewGroup(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        View findViewById = activity.getWindow().getDecorView().findViewById(R.id.content);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        return (ViewGroup) findViewById;
    }

    public ViewGroup.LayoutParams getLayoutParams(IInAppMessage inAppMessage) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        if (inAppMessage instanceof InAppMessageSlideup) {
            layoutParams.gravity = ((InAppMessageSlideup) inAppMessage).getSlideFrom() == SlideFrom.TOP ? 48 : 80;
        }
        return layoutParams;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addInAppMessageViewToViewGroup(ViewGroup parentViewGroup, IInAppMessage inAppMessage, final View inAppMessageView, IInAppMessageViewLifecycleListener inAppMessageViewLifecycleListener) {
        Intrinsics.checkNotNullParameter(parentViewGroup, "parentViewGroup");
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(inAppMessageView, "inAppMessageView");
        Intrinsics.checkNotNullParameter(inAppMessageViewLifecycleListener, "inAppMessageViewLifecycleListener");
        inAppMessageViewLifecycleListener.beforeOpened(inAppMessageView, inAppMessage);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String addInAppMessageViewToViewGroup$lambda$3;
                addInAppMessageViewToViewGroup$lambda$3 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$3();
                return addInAppMessageViewToViewGroup$lambda$3;
            }
        }, 7, (Object) null);
        parentViewGroup.addView(inAppMessageView, getLayoutParams(inAppMessage));
        if (inAppMessageView instanceof IInAppMessageView) {
            if (getConfigurationProvider().getShouldAddStatusBarPaddingToInAppMessages()) {
                Context context = inAppMessageView.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                final int statusBarHeight = ViewUtils.getStatusBarHeight(context);
                WindowInsetsCompat build = new WindowInsetsCompat.Builder().setInsets(WindowInsetsCompat.Type.systemBars(), Insets.of(0, statusBarHeight, 0, 0)).build();
                Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String addInAppMessageViewToViewGroup$lambda$4;
                        addInAppMessageViewToViewGroup$lambda$4 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$4(statusBarHeight);
                        return addInAppMessageViewToViewGroup$lambda$4;
                    }
                }, 7, (Object) null);
                ((IInAppMessageView) inAppMessageView).applyWindowInsets(build);
            } else {
                ViewGroup viewGroup = parentViewGroup;
                ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new OnApplyWindowInsetsListener() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda2
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        WindowInsetsCompat addInAppMessageViewToViewGroup$lambda$9;
                        addInAppMessageViewToViewGroup$lambda$9 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$9(DefaultInAppMessageViewWrapper.this, inAppMessageView, view, windowInsetsCompat);
                        return addInAppMessageViewToViewGroup$lambda$9;
                    }
                });
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String addInAppMessageViewToViewGroup$lambda$10;
                        addInAppMessageViewToViewGroup$lambda$10 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$10();
                        return addInAppMessageViewToViewGroup$lambda$10;
                    }
                }, 7, (Object) null);
                ViewCompat.requestApplyInsets(viewGroup);
            }
        }
        if (inAppMessage.getAnimateIn()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addInAppMessageViewToViewGroup$lambda$11;
                    addInAppMessageViewToViewGroup$lambda$11 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$11();
                    return addInAppMessageViewToViewGroup$lambda$11;
                }
            }, 7, (Object) null);
            setAndStartAnimation(true);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addInAppMessageViewToViewGroup$lambda$12;
                    addInAppMessageViewToViewGroup$lambda$12 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$12();
                    return addInAppMessageViewToViewGroup$lambda$12;
                }
            }, 7, (Object) null);
            if (inAppMessage.getDismissType() == DismissType.AUTO_DISMISS) {
                addDismissRunnable();
            }
            finalizeViewBeforeDisplay(inAppMessage, inAppMessageView, inAppMessageViewLifecycleListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$3() {
        return "Adding In-app message view to parent view group.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$4(int i) {
        return "Adding status bar height of " + i + " padding to in-app message view.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final WindowInsetsCompat addInAppMessageViewToViewGroup$lambda$9(DefaultInAppMessageViewWrapper defaultInAppMessageViewWrapper, View view, View view2, WindowInsetsCompat windowInsetsCompat) {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) defaultInAppMessageViewWrapper, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String addInAppMessageViewToViewGroup$lambda$9$lambda$5;
                addInAppMessageViewToViewGroup$lambda$9$lambda$5 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$9$lambda$5();
                return addInAppMessageViewToViewGroup$lambda$9$lambda$5;
            }
        }, 7, (Object) null);
        if (windowInsetsCompat == null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) defaultInAppMessageViewWrapper, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addInAppMessageViewToViewGroup$lambda$9$lambda$6;
                    addInAppMessageViewToViewGroup$lambda$9$lambda$6 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$9$lambda$6();
                    return addInAppMessageViewToViewGroup$lambda$9$lambda$6;
                }
            }, 7, (Object) null);
            return new WindowInsetsCompat(windowInsetsCompat);
        }
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.braze.ui.inappmessage.views.IInAppMessageView");
        IInAppMessageView iInAppMessageView = (IInAppMessageView) view;
        if (!iInAppMessageView.getHasAppliedWindowInsets()) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) defaultInAppMessageViewWrapper, BrazeLogger.Priority.V, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addInAppMessageViewToViewGroup$lambda$9$lambda$7;
                    addInAppMessageViewToViewGroup$lambda$9$lambda$7 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$9$lambda$7();
                    return addInAppMessageViewToViewGroup$lambda$9$lambda$7;
                }
            }, 6, (Object) null);
            iInAppMessageView.applyWindowInsets(windowInsetsCompat);
        } else {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) defaultInAppMessageViewWrapper, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String addInAppMessageViewToViewGroup$lambda$9$lambda$8;
                    addInAppMessageViewToViewGroup$lambda$9$lambda$8 = DefaultInAppMessageViewWrapper.addInAppMessageViewToViewGroup$lambda$9$lambda$8();
                    return addInAppMessageViewToViewGroup$lambda$9$lambda$8;
                }
            }, 7, (Object) null);
        }
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$9$lambda$5() {
        return "In-app message view received window insets.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$9$lambda$6() {
        return "Window insets were null, so not applying window insets to in-app message view.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$9$lambda$7() {
        return "Calling applyWindowInsets on in-app message view.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$9$lambda$8() {
        return "Not reapplying window insets to in-app message view.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$10() {
        return "Requesting to apply insets.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$11() {
        return "In-app message view will animate into the visible area.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String addInAppMessageViewToViewGroup$lambda$12() {
        return "In-app message view will be placed instantly into the visible area.";
    }

    public static /* synthetic */ void announceForAccessibilityIfNecessary$default(DefaultInAppMessageViewWrapper defaultInAppMessageViewWrapper, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: announceForAccessibilityIfNecessary");
        }
        if ((i & 1) != 0) {
            str = "In app message displayed.";
        }
        defaultInAppMessageViewWrapper.announceForAccessibilityIfNecessary(str);
    }

    public void announceForAccessibilityIfNecessary(String fallbackAccessibilityMessage) {
        if (getInAppMessageView() instanceof IInAppMessageImmersiveView) {
            String message = getInAppMessage().getMessage();
            if (getInAppMessage() instanceof IInAppMessageImmersive) {
                IInAppMessage inAppMessage = getInAppMessage();
                Intrinsics.checkNotNull(inAppMessage, "null cannot be cast to non-null type com.braze.models.inappmessage.IInAppMessageImmersive");
                getInAppMessageView().announceForAccessibility(((IInAppMessageImmersive) inAppMessage).getHeader() + " . " + message);
                return;
            }
            getInAppMessageView().announceForAccessibility(message);
            return;
        }
        if (getInAppMessageView() instanceof InAppMessageHtmlBaseView) {
            getInAppMessageView().announceForAccessibility(fallbackAccessibilityMessage);
        }
    }

    public View.OnClickListener createClickListener() {
        return new View.OnClickListener() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultInAppMessageViewWrapper.createClickListener$lambda$13(DefaultInAppMessageViewWrapper.this, view);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createClickListener$lambda$13(DefaultInAppMessageViewWrapper defaultInAppMessageViewWrapper, View view) {
        List<MessageButton> messageButtons;
        IInAppMessage inAppMessage = defaultInAppMessageViewWrapper.getInAppMessage();
        IInAppMessageImmersive iInAppMessageImmersive = inAppMessage instanceof IInAppMessageImmersive ? (IInAppMessageImmersive) inAppMessage : null;
        if ((iInAppMessageImmersive == null || (messageButtons = iInAppMessageImmersive.getMessageButtons()) == null || !messageButtons.isEmpty()) && (defaultInAppMessageViewWrapper.getInAppMessage() instanceof IInAppMessageImmersive)) {
            return;
        }
        defaultInAppMessageViewWrapper.getInAppMessageViewLifecycleListener().onClicked(defaultInAppMessageViewWrapper.getInAppMessageCloser(), defaultInAppMessageViewWrapper.getInAppMessageView(), defaultInAppMessageViewWrapper.getInAppMessage());
    }

    public void createButtonClickListeners() {
        IInAppMessage inAppMessage = getInAppMessage();
        final IInAppMessageImmersive iInAppMessageImmersive = inAppMessage instanceof IInAppMessageImmersive ? (IInAppMessageImmersive) inAppMessage : null;
        if (iInAppMessageImmersive != null) {
            if (iInAppMessageImmersive.getMessageButtons().isEmpty()) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String createButtonClickListeners$lambda$18$lambda$14;
                        createButtonClickListeners$lambda$18$lambda$14 = DefaultInAppMessageViewWrapper.createButtonClickListeners$lambda$18$lambda$14();
                        return createButtonClickListeners$lambda$18$lambda$14;
                    }
                }, 7, (Object) null);
                return;
            }
            List<View> buttonViews = getButtonViews();
            if (buttonViews != null) {
                int i = 0;
                for (Object obj : buttonViews) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    View view = (View) obj;
                    final MessageButton messageButton = (MessageButton) CollectionsKt.getOrNull(iInAppMessageImmersive.getMessageButtons(), i);
                    if (messageButton != null) {
                        view.setOnClickListener(new View.OnClickListener() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda7
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DefaultInAppMessageViewWrapper.createButtonClickListeners$lambda$18$lambda$17$lambda$16$lambda$15(DefaultInAppMessageViewWrapper.this, messageButton, iInAppMessageImmersive, view2);
                            }
                        });
                    }
                    i = i2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String createButtonClickListeners$lambda$18$lambda$14() {
        return "Cannot create button click listener since this in-app message does not have message buttons.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createButtonClickListeners$lambda$18$lambda$17$lambda$16$lambda$15(DefaultInAppMessageViewWrapper defaultInAppMessageViewWrapper, MessageButton messageButton, IInAppMessageImmersive iInAppMessageImmersive, View view) {
        defaultInAppMessageViewWrapper.getInAppMessageViewLifecycleListener().onButtonClicked(defaultInAppMessageViewWrapper.getInAppMessageCloser(), messageButton, iInAppMessageImmersive);
    }

    public View.OnClickListener createCloseInAppMessageClickListener() {
        return new View.OnClickListener() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultInAppMessageViewWrapper.createCloseInAppMessageClickListener$lambda$19(view);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createCloseInAppMessageClickListener$lambda$19(View view) {
        BrazeInAppMessageManager.INSTANCE.getInstance().hideCurrentlyDisplayingInAppMessage(true);
    }

    public void addDismissRunnable() {
        if (getDismissRunnable() == null) {
            setDismissRunnable(new Runnable() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultInAppMessageViewWrapper.addDismissRunnable$lambda$20();
                }
            });
            getInAppMessageView().postDelayed(getDismissRunnable(), getInAppMessage().getDurationInMilliseconds());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addDismissRunnable$lambda$20() {
        BrazeInAppMessageManager.INSTANCE.getInstance().hideCurrentlyDisplayingInAppMessage(true);
    }

    public void setAndStartAnimation(boolean opening) {
        Animation closingAnimation;
        if (opening) {
            closingAnimation = getOpeningAnimation();
        } else {
            closingAnimation = getClosingAnimation();
        }
        if (closingAnimation != null) {
            closingAnimation.setAnimationListener(createAnimationListener(opening));
        }
        getInAppMessageView().clearAnimation();
        getInAppMessageView().setAnimation(closingAnimation);
        if (closingAnimation != null) {
            closingAnimation.startNow();
        }
        getInAppMessageView().invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String closeInAppMessageView$lambda$21() {
        return "Closing in-app message view";
    }

    public void closeInAppMessageView() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String closeInAppMessageView$lambda$21;
                closeInAppMessageView$lambda$21 = DefaultInAppMessageViewWrapper.closeInAppMessageView$lambda$21();
                return closeInAppMessageView$lambda$21;
            }
        }, 7, (Object) null);
        ViewUtils.removeViewFromParent(getInAppMessageView());
        View inAppMessageView = getInAppMessageView();
        InAppMessageHtmlBaseView inAppMessageHtmlBaseView = inAppMessageView instanceof InAppMessageHtmlBaseView ? (InAppMessageHtmlBaseView) inAppMessageView : null;
        if (inAppMessageHtmlBaseView != null) {
            inAppMessageHtmlBaseView.finishWebViewDisplay();
        }
        if (getPreviouslyFocusedView() != null) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    String closeInAppMessageView$lambda$22;
                    closeInAppMessageView$lambda$22 = DefaultInAppMessageViewWrapper.closeInAppMessageView$lambda$22(DefaultInAppMessageViewWrapper.this);
                    return closeInAppMessageView$lambda$22;
                }
            }, 7, (Object) null);
            try {
                View previouslyFocusedView = getPreviouslyFocusedView();
                if (previouslyFocusedView != null) {
                    previouslyFocusedView.requestFocus();
                }
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String closeInAppMessageView$lambda$23;
                        closeInAppMessageView$lambda$23 = DefaultInAppMessageViewWrapper.closeInAppMessageView$lambda$23();
                        return closeInAppMessageView$lambda$23;
                    }
                }, 4, (Object) null);
            }
        }
        getInAppMessageViewLifecycleListener().afterClosed(getInAppMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String closeInAppMessageView$lambda$22(DefaultInAppMessageViewWrapper defaultInAppMessageViewWrapper) {
        return "Returning focus to view after closing message. View: " + defaultInAppMessageViewWrapper.getPreviouslyFocusedView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String closeInAppMessageView$lambda$23() {
        return "Failed to request focus on previous view";
    }

    public void finalizeViewBeforeDisplay(IInAppMessage inAppMessage, View inAppMessageView, IInAppMessageViewLifecycleListener inAppMessageViewLifecycleListener) {
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(inAppMessageView, "inAppMessageView");
        Intrinsics.checkNotNullParameter(inAppMessageViewLifecycleListener, "inAppMessageViewLifecycleListener");
        if (ViewUtils.isDeviceNotInTouchMode(inAppMessageView)) {
            int i = WhenMappings.$EnumSwitchMapping$0[inAppMessage.getMessageType().ordinal()];
            if (i != 1 && i != 2 && i != 3 && i != 4) {
                ViewUtils.setFocusableInTouchModeAndRequestFocus(inAppMessageView);
            }
        } else {
            ViewUtils.setFocusableInTouchModeAndRequestFocus(inAppMessageView);
        }
        announceForAccessibilityIfNecessary$default(this, null, 1, null);
        inAppMessageViewLifecycleListener.afterOpened(inAppMessageView, inAppMessage);
    }

    public SwipeDismissTouchListener.DismissCallbacks createDismissCallbacks() {
        return new SwipeDismissTouchListener.DismissCallbacks() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$createDismissCallbacks$1
            @Override // com.braze.ui.inappmessage.listeners.SwipeDismissTouchListener.DismissCallbacks
            public boolean canDismiss(Object token) {
                return true;
            }

            @Override // com.braze.ui.inappmessage.listeners.SwipeDismissTouchListener.DismissCallbacks
            public void onDismiss(View view, Object token) {
                Intrinsics.checkNotNullParameter(view, "view");
                DefaultInAppMessageViewWrapper.this.getInAppMessage().setAnimateOut(false);
                BrazeInAppMessageManager.INSTANCE.getInstance().hideCurrentlyDisplayingInAppMessage(true);
            }
        };
    }

    public TouchAwareSwipeDismissTouchListener.ITouchListener createTouchAwareListener() {
        return new TouchAwareSwipeDismissTouchListener.ITouchListener() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$createTouchAwareListener$1
            @Override // com.braze.ui.inappmessage.listeners.TouchAwareSwipeDismissTouchListener.ITouchListener
            public void onTouchEnded() {
            }

            @Override // com.braze.ui.inappmessage.listeners.TouchAwareSwipeDismissTouchListener.ITouchListener
            public void onTouchStartedOrContinued() {
            }
        };
    }

    public Animation.AnimationListener createAnimationListener(boolean opening) {
        if (opening) {
            return new DefaultInAppMessageViewWrapper$createAnimationListener$1(this);
        }
        return new Animation.AnimationListener() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$createAnimationListener$2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                DefaultInAppMessageViewWrapper.this.getInAppMessageView().clearAnimation();
                DefaultInAppMessageViewWrapper.this.getInAppMessageView().setVisibility(8);
                DefaultInAppMessageViewWrapper.this.closeInAppMessageView();
            }
        };
    }

    /* compiled from: DefaultInAppMessageViewWrapper.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tJ$\u0010\u000b\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\f¨\u0006\r"}, d2 = {"Lcom/braze/ui/inappmessage/DefaultInAppMessageViewWrapper$Companion;", "", "<init>", "()V", "setAllViewGroupChildrenAsNonAccessibilityImportant", "", "viewGroup", "Landroid/view/ViewGroup;", "viewAccessibilityFlagMap", "", "", "resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto", "", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void setAllViewGroupChildrenAsNonAccessibilityImportant(ViewGroup viewGroup, Map<Integer, Integer> viewAccessibilityFlagMap) {
            Intrinsics.checkNotNullParameter(viewAccessibilityFlagMap, "viewAccessibilityFlagMap");
            if (viewGroup == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String allViewGroupChildrenAsNonAccessibilityImportant$lambda$0;
                        allViewGroupChildrenAsNonAccessibilityImportant$lambda$0 = DefaultInAppMessageViewWrapper.Companion.setAllViewGroupChildrenAsNonAccessibilityImportant$lambda$0();
                        return allViewGroupChildrenAsNonAccessibilityImportant$lambda$0;
                    }
                }, 6, (Object) null);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != null) {
                    viewAccessibilityFlagMap.put(Integer.valueOf(childAt.getId()), Integer.valueOf(childAt.getImportantForAccessibility()));
                    childAt.setImportantForAccessibility(4);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String setAllViewGroupChildrenAsNonAccessibilityImportant$lambda$0() {
            return "In-app message ViewGroup was null. Not preparing in-app message accessibility for exclusive mode.";
        }

        public final void resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto(ViewGroup viewGroup, Map<Integer, Integer> viewAccessibilityFlagMap) {
            Intrinsics.checkNotNullParameter(viewAccessibilityFlagMap, "viewAccessibilityFlagMap");
            if (viewGroup == null) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.ui.inappmessage.DefaultInAppMessageViewWrapper$Companion$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        String resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto$lambda$1;
                        resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto$lambda$1 = DefaultInAppMessageViewWrapper.Companion.resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto$lambda$1();
                        return resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto$lambda$1;
                    }
                }, 6, (Object) null);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != null) {
                    int id = childAt.getId();
                    if (viewAccessibilityFlagMap.containsKey(Integer.valueOf(id))) {
                        Integer num = viewAccessibilityFlagMap.get(Integer.valueOf(id));
                        if (num != null) {
                            childAt.setImportantForAccessibility(num.intValue());
                        }
                    } else {
                        childAt.setImportantForAccessibility(0);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String resetAllViewGroupChildrenToPreviousAccessibilityFlagOrAuto$lambda$1() {
            return "In-app message ViewGroup was null. Not resetting in-app message accessibility for exclusive mode.";
        }
    }
}
