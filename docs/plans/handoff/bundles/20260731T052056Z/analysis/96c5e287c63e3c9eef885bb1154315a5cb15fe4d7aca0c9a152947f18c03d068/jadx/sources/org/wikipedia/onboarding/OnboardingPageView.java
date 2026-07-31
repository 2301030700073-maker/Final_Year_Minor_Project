package org.wikipedia.onboarding;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.TuplesKt;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.R$styleable;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.GoneIfEmptyTextView;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lorg/wikipedia/onboarding/OnboardingPageView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "text", "", "setSecondaryText", "(Ljava/lang/CharSequence;)V", "", "isVisible", "setTertiaryTextViewVisible", "(Z)V", "Lorg/wikipedia/onboarding/OnboardingPageView$Callback;", "callback", "Lorg/wikipedia/onboarding/OnboardingPageView$Callback;", "getCallback", "()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;", "setCallback", "(Lorg/wikipedia/onboarding/OnboardingPageView$Callback;)V", "Callback", "DefaultCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnboardingPageView extends ConstraintLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Retrofit binding;
    public Callback callback;
    public boolean viewHeightDetected;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onLinkClick(OnboardingPageView onboardingPageView, String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingPageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        String str;
        Throwable th;
        ConnectionPool connectionPool;
        Drawable drawable;
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_onboarding_page, this);
        int i = R.id.bottomOffset;
        View findChildViewById = Room.findChildViewById(this, R.id.bottomOffset);
        if (findChildViewById != null) {
            i = R.id.imageViewCentered;
            ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.imageViewCentered);
            if (imageView != null) {
                View findChildViewById2 = Room.findChildViewById(this, R.id.patrollerTasksButtonsContainer);
                if (findChildViewById2 != null) {
                    int i2 = R.id.talkContent;
                    if (((TextView) Room.findChildViewById(findChildViewById2, R.id.talkContent)) != null) {
                        i2 = R.id.talkImage;
                        if (((ImageView) Room.findChildViewById(findChildViewById2, R.id.talkImage)) != null) {
                            i2 = R.id.talkTitle;
                            if (((TextView) Room.findChildViewById(findChildViewById2, R.id.talkTitle)) != null) {
                                i2 = R.id.thankContent;
                                if (((TextView) Room.findChildViewById(findChildViewById2, R.id.thankContent)) != null) {
                                    i2 = R.id.thankImage;
                                    if (((ImageView) Room.findChildViewById(findChildViewById2, R.id.thankImage)) != null) {
                                        i2 = R.id.thankTitle;
                                        if (((TextView) Room.findChildViewById(findChildViewById2, R.id.thankTitle)) != null) {
                                            i2 = R.id.undoContent;
                                            if (((TextView) Room.findChildViewById(findChildViewById2, R.id.undoContent)) != null) {
                                                i2 = R.id.undoImage;
                                                if (((ImageView) Room.findChildViewById(findChildViewById2, R.id.undoImage)) != null) {
                                                    i2 = R.id.undoTitle;
                                                    if (((TextView) Room.findChildViewById(findChildViewById2, R.id.undoTitle)) != null) {
                                                        i2 = R.id.watchContent;
                                                        if (((TextView) Room.findChildViewById(findChildViewById2, R.id.watchContent)) != null) {
                                                            i2 = R.id.watchImage;
                                                            if (((ImageView) Room.findChildViewById(findChildViewById2, R.id.watchImage)) != null) {
                                                                i2 = R.id.watchTitle;
                                                                connectionPool = ((TextView) Room.findChildViewById(findChildViewById2, R.id.watchTitle)) != null ? new ConnectionPool(29, (LinearLayout) findChildViewById2) : connectionPool;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(findChildViewById2.getResources().getResourceName(i2)));
                    throw null;
                }
                connectionPool = null;
                i = R.id.primaryTextView;
                AppTextView appTextView = (AppTextView) Room.findChildViewById(this, R.id.primaryTextView);
                if (appTextView != null) {
                    NestedScrollView nestedScrollView = (NestedScrollView) Room.findChildViewById(this, R.id.scrollView);
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.scrollViewContainer);
                    int i3 = R.id.secondaryTextView;
                    AppTextView appTextView2 = (AppTextView) Room.findChildViewById(this, R.id.secondaryTextView);
                    if (appTextView2 != null) {
                        i3 = R.id.tertiaryTextView;
                        GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(this, R.id.tertiaryTextView);
                        if (goneIfEmptyTextView != null) {
                            ConnectionPool connectionPool2 = connectionPool;
                            this.binding = new Retrofit(this, findChildViewById, imageView, connectionPool2, appTextView, nestedScrollView, linearLayout, appTextView2, goneIfEmptyTextView);
                            if (attributeSet != null) {
                                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.OnboardingPageView, 0, 0);
                                int resourceId = obtainStyledAttributes.getResourceId(1, -1);
                                String string = obtainStyledAttributes.getString(5);
                                String string2 = obtainStyledAttributes.getString(6);
                                String string3 = obtainStyledAttributes.getString(7);
                                obtainStyledAttributes.getString(2);
                                Drawable drawable2 = obtainStyledAttributes.getDrawable(0);
                                float dimension = obtainStyledAttributes.getDimension(3, RecyclerView.DECELERATION_RATE);
                                boolean z = obtainStyledAttributes.getBoolean(4, false);
                                if (drawable2 != null) {
                                    setBackground(drawable2);
                                }
                                imageView.setVisibility(resourceId != -1 ? 0 : 8);
                                if (dimension > RecyclerView.DECELERATION_RATE && resourceId != -1 && (drawable = TuplesKt.getDrawable(context, resourceId)) != null && drawable.getIntrinsicHeight() > 0) {
                                    imageView.setImageDrawable(drawable);
                                    float intrinsicWidth = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
                                    ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                                    if (layoutParams == null) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                                        throw null;
                                    }
                                    layoutParams.width = (int) dimension;
                                    layoutParams.height = (int) (dimension / intrinsicWidth);
                                    imageView.setLayoutParams(layoutParams);
                                }
                                appTextView.setVisibility((string == null || string.length() == 0) ? 8 : 0);
                                appTextView.setText(string);
                                appTextView2.setVisibility((string2 == null || string2.length() == 0) ? 8 : 0);
                                StringUtil stringUtil = StringUtil.INSTANCE;
                                appTextView2.setText(StringUtil.fromHtml(string2));
                                goneIfEmptyTextView.setVisibility((string3 == null || string3.length() == 0) ? 8 : 0);
                                goneIfEmptyTextView.setText(string3);
                                appTextView2.setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(25, this)));
                                if (connectionPool2 != null) {
                                    ((LinearLayout) connectionPool2.delegate).setVisibility(z ? 0 : 8);
                                }
                                obtainStyledAttributes.recycle();
                                return;
                            }
                            return;
                        }
                    }
                    str = "Missing required view with ID: ";
                    th = null;
                    i = i3;
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3(str.concat(getResources().getResourceName(i)));
                    throw th;
                }
            }
        }
        str = "Missing required view with ID: ";
        th = null;
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3(str.concat(getResources().getResourceName(i)));
        throw th;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.viewHeightDetected) {
            return;
        }
        Retrofit retrofit = this.binding;
        NestedScrollView nestedScrollView = (NestedScrollView) retrofit.callFactory;
        LinearLayout linearLayout = (LinearLayout) retrofit.baseUrl;
        if (nestedScrollView != null && linearLayout != null && nestedScrollView.getHeight() <= linearLayout.getHeight()) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 0;
            if (linearLayout != null) {
                linearLayout.setLayoutParams(layoutParams);
            }
        }
        this.viewHeightDetected = true;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setSecondaryText(CharSequence text) {
        ((AppTextView) this.binding.converterFactories).setText(text);
    }

    public final void setTertiaryTextViewVisible(boolean isVisible) {
        ((GoneIfEmptyTextView) this.binding.callAdapterFactories).setVisibility(isVisible ? 0 : 8);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DefaultCallback implements Callback {
        @Override // org.wikipedia.onboarding.OnboardingPageView.Callback
        public final void onLinkClick(OnboardingPageView onboardingPageView, String str) {
        }
    }
}
