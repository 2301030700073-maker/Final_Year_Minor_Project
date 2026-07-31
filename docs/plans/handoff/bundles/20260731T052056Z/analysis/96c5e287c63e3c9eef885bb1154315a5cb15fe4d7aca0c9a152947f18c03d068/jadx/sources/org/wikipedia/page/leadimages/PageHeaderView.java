package org.wikipedia.page.leadimages;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import j$.time.LocalDate;
import kotlin.Metadata;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.donate.donationreminder.DonationReminderCardView;
import org.wikipedia.donate.donationreminder.DonationReminderConfig;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.settings.Prefs;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.LinearLayoutOverWebView;
import org.wikipedia.views.ObservableWebView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bR.\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0011\u0010\u001b\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001f\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lorg/wikipedia/page/leadimages/PageHeaderView;", "Lorg/wikipedia/views/LinearLayoutOverWebView;", "Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "value", "callToActionText", "Ljava/lang/String;", "getCallToActionText", "()Ljava/lang/String;", "setCallToActionText", "(Ljava/lang/String;)V", "Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;", "callback", "Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;", "getCallback", "()Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;", "setCallback", "(Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;)V", "", "getDonationReminderCardViewHeight", "()I", "donationReminderCardViewHeight", "Lorg/wikipedia/views/FaceAndColorDetectImageView;", "getImageView", "()Lorg/wikipedia/views/FaceAndColorDetectImageView;", "imageView", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PageHeaderView extends LinearLayoutOverWebView implements ObservableWebView.OnScrollChangeListener {
    public final SVGAndroidRenderer binding;
    public String callToActionText;
    public Callback callback;
    public int messageCardViewHeight;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_page_header, this);
        int i = R.id.call_to_action_container;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.call_to_action_container);
        if (linearLayout != null) {
            i = R.id.call_to_action_text;
            TextView textView = (TextView) Room.findChildViewById(this, R.id.call_to_action_text);
            if (textView != null) {
                i = R.id.donationReminderCardView;
                DonationReminderCardView donationReminderCardView = (DonationReminderCardView) Room.findChildViewById(this, R.id.donationReminderCardView);
                if (donationReminderCardView != null) {
                    i = R.id.headerImageContainer;
                    FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(this, R.id.headerImageContainer);
                    if (frameLayout != null) {
                        i = R.id.view_page_header_image;
                        FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.view_page_header_image);
                        if (faceAndColorDetectImageView != null) {
                            i = R.id.view_page_header_image_gradient_bottom;
                            View findChildViewById = Room.findChildViewById(this, R.id.view_page_header_image_gradient_bottom);
                            if (findChildViewById != null) {
                                this.binding = new SVGAndroidRenderer(this, linearLayout, textView, donationReminderCardView, frameLayout, faceAndColorDetectImageView, findChildViewById);
                                TypedValue typedValue = new TypedValue();
                                int i2 = 1;
                                typedValue = context.getTheme().resolveAttribute(R.attr.overlay_color, typedValue, true) ? typedValue : null;
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969818");
                                    throw null;
                                }
                                findChildViewById.setBackground(Jsoup.getPowerGradient(typedValue.data, 80));
                                faceAndColorDetectImageView.setOnClickListener(new PageHeaderView$$ExternalSyntheticLambda0(this, 0));
                                linearLayout.setOnClickListener(new PageHeaderView$$ExternalSyntheticLambda0(this, i2));
                                int i3 = DonationReminderHelper.validReadCountOnSeconds;
                                if (DonationReminderHelper.isEnabled() || (Prefs.getDonationReminderConfig().userEnabled && Prefs.getDonationReminderConfig().isReminderReady && DonationReminderHelper.isInEligibleCountry())) {
                                    Prefs prefs = Prefs.INSTANCE;
                                    updateDonationReminderCardContent(Prefs.getDonationReminderConfig());
                                    donationReminderCardView.setVisibility(0);
                                    setVisibility(4);
                                    donationReminderCardView.post(new MainFragment$$ExternalSyntheticLambda5(11, this));
                                }
                                setOrientation(1);
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setDonationReminderCard$lambda$0$0(PageHeaderView pageHeaderView) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(pageHeaderView.getResources().getDisplayMetrics().widthPixels, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        SVGAndroidRenderer sVGAndroidRenderer = pageHeaderView.binding;
        ((DonationReminderCardView) sVGAndroidRenderer.state).measure(makeMeasureSpec, makeMeasureSpec2);
        DonationReminderCardView donationReminderCardView = (DonationReminderCardView) sVGAndroidRenderer.state;
        pageHeaderView.messageCardViewHeight = donationReminderCardView.getMeasuredHeight() + ((int) Okio__OkioKt.dpToPx(64.0f));
        donationReminderCardView.setVisibility(8);
        pageHeaderView.setVisibility(8);
    }

    public final String getCallToActionText() {
        return this.callToActionText;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final int getDonationReminderCardViewHeight() {
        SVGAndroidRenderer sVGAndroidRenderer = this.binding;
        if (((DonationReminderCardView) sVGAndroidRenderer.state).getVisibility() == 0) {
            return this.messageCardViewHeight + (((FrameLayout) sVGAndroidRenderer.stateStack).getVisibility() != 0 ? (int) Okio__OkioKt.dpToPx(20.0f) : 0);
        }
        return 0;
    }

    public final FaceAndColorDetectImageView getImageView() {
        return (FaceAndColorDetectImageView) this.binding.parentStack;
    }

    public final void loadImage(String str) {
        boolean z;
        int i = DonationReminderHelper.validReadCountOnSeconds;
        if (DonationReminderHelper.isEnabled()) {
            Prefs prefs = Prefs.INSTANCE;
            DonationReminderConfig donationReminderConfig = Prefs.getDonationReminderConfig();
            int i2 = donationReminderConfig.timesReminderShown;
            z = donationReminderConfig.userEnabled && donationReminderConfig.setupTimestamp != 0 && donationReminderConfig.articleFrequency > 0 && donationReminderConfig.isReminderReady && i2 < 2 && LocalDate.now().toEpochDay() - donationReminderConfig.promptLastSeen > 0;
            if (z) {
                int i3 = i2 + 1;
                Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(donationReminderConfig, false, LocalDate.now().toEpochDay(), 0L, 0, 0, RecyclerView.DECELERATION_RATE, i3 < 2, i3, 0, 317));
            }
        } else {
            z = false;
        }
        SVGAndroidRenderer sVGAndroidRenderer = this.binding;
        if (z) {
            Cache.Companion.logDonationReminderAction$default("impression", "reminder_milestone", null, null, null, null, null, 252);
            Prefs prefs2 = Prefs.INSTANCE;
            updateDonationReminderCardContent(Prefs.getDonationReminderConfig());
            ((DonationReminderCardView) sVGAndroidRenderer.state).setVisibility(0);
        } else {
            ((DonationReminderCardView) sVGAndroidRenderer.state).setVisibility(8);
        }
        if (str == null || str.length() == 0) {
            ((FrameLayout) sVGAndroidRenderer.stateStack).setVisibility(8);
            setLayoutParams(new CoordinatorLayout.LayoutParams(-1, getDonationReminderCardViewHeight()));
            setVisibility(0);
            return;
        }
        ((FrameLayout) sVGAndroidRenderer.stateStack).setVisibility(0);
        show();
        FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) sVGAndroidRenderer.parentStack;
        Uri parse = Uri.parse(str);
        parse.getClass();
        int i4 = FaceAndColorDetectImageView.$r8$clinit;
        faceAndColorDetectImageView.loadImage(parse, null);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = -((int) getTranslationY());
        ((FaceAndColorDetectImageView) this.binding.parentStack).setTranslationY(RecyclerView.DECELERATION_RATE);
        int height = getHeight();
        if (height <= i5) {
            i5 = height;
        }
        setTranslationY(-i5);
    }

    @Override // org.wikipedia.views.ObservableWebView.OnScrollChangeListener
    public final void onScrollChanged(int i, int i2) {
        ((FaceAndColorDetectImageView) this.binding.parentStack).setTranslationY(RecyclerView.DECELERATION_RATE);
        int height = getHeight();
        if (height <= i2) {
            i2 = height;
        }
        setTranslationY(-i2);
    }

    public final void refreshCallToActionVisibility() {
        String str = this.callToActionText;
        SVGAndroidRenderer sVGAndroidRenderer = this.binding;
        if (str != null) {
            Prefs prefs = Prefs.INSTANCE;
            if (!Prefs.getReadingFocusModeEnabled()) {
                ((LinearLayout) sVGAndroidRenderer.canvas).setVisibility(0);
                ((TextView) sVGAndroidRenderer.document).setText(this.callToActionText);
                ((View) sVGAndroidRenderer.matrixStack).setVisibility(0);
                return;
            }
        }
        ((LinearLayout) sVGAndroidRenderer.canvas).setVisibility(8);
        ((View) sVGAndroidRenderer.matrixStack).setVisibility(8);
    }

    public final void setCallToActionText(String str) {
        this.callToActionText = str;
        refreshCallToActionVisibility();
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void show() {
        Context context = getContext();
        context.getClass();
        setLayoutParams(new CoordinatorLayout.LayoutParams(-1, getDonationReminderCardViewHeight() + Okio__OkioKt.leadImageHeightForDevice(context)));
        setVisibility(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateDonationReminderCardContent(org.wikipedia.donate.donationreminder.DonationReminderConfig r10) {
        /*
            r9 = this;
            android.content.Context r0 = r9.getContext()
            android.content.res.Resources r0 = r0.getResources()
            int r1 = r10.articleFrequency
            java.lang.Integer r2 = java.lang.Integer.valueOf(r1)
            r3 = 1
            java.lang.Object[] r4 = new java.lang.Object[r3]
            r5 = 0
            r4[r5] = r2
            r2 = 2131755016(0x7f100008, float:1.91409E38)
            java.lang.String r0 = r0.getQuantityString(r2, r1, r4)
            r0.getClass()
            java.util.Locale$Builder r1 = new java.util.Locale$Builder
            r1.<init>()
            java.util.Locale r2 = java.util.Locale.getDefault()
            java.util.Locale$Builder r1 = r1.setLocale(r2)
            org.wikipedia.settings.Prefs r2 = org.wikipedia.settings.Prefs.INSTANCE     // Catch: java.lang.IllegalArgumentException -> L46
            java.lang.String r2 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L46
            if (r2 == 0) goto L3f
            int r2 = r2.length()     // Catch: java.lang.IllegalArgumentException -> L46
            if (r2 != 0) goto L3a
            goto L3f
        L3a:
            java.lang.String r2 = org.wikipedia.settings.Prefs.getGeoIPCountryOverride()     // Catch: java.lang.IllegalArgumentException -> L46
            goto L47
        L3f:
            kotlinx.coroutines.internal.Symbol r2 = org.jsoup.Jsoup.unmarshal()     // Catch: java.lang.IllegalArgumentException -> L46
            java.lang.String r2 = r2.symbol     // Catch: java.lang.IllegalArgumentException -> L46
            goto L47
        L46:
            r2 = 0
        L47:
            if (r2 != 0) goto L4b
            java.lang.String r2 = ""
        L4b:
            java.util.Locale$Builder r1 = r1.setRegion(r2)
            java.util.Locale r1 = r1.build()
            java.text.NumberFormat r1 = java.text.NumberFormat.getCurrencyInstance(r1)
            r1.setMinimumFractionDigits(r5)
            org.wikipedia.settings.Prefs r2 = org.wikipedia.settings.Prefs.INSTANCE
            org.wikipedia.donate.donationreminder.DonationReminderConfig r2 = org.wikipedia.settings.Prefs.getDonationReminderConfig()
            float r2 = r2.donateAmount
            java.lang.Float r2 = java.lang.Float.valueOf(r2)
            java.lang.String r1 = r1.format(r2)
            int r2 = r10.goalReachedCount
            r4 = 2
            if (r2 != r3) goto L81
            android.content.Context r2 = r9.getContext()
            java.lang.Object[] r6 = new java.lang.Object[r4]
            r6[r5] = r0
            r6[r3] = r1
            r7 = 2131886449(0x7f120171, float:1.9407477E38)
            java.lang.String r2 = r2.getString(r7, r6)
            goto L90
        L81:
            android.content.Context r2 = r9.getContext()
            java.lang.Object[] r6 = new java.lang.Object[r3]
            r6[r5] = r0
            r7 = 2131886478(0x7f12018e, float:1.9407536E38)
            java.lang.String r2 = r2.getString(r7, r6)
        L90:
            r2.getClass()
            j$.util.concurrent.ConcurrentHashMap r6 = org.wikipedia.util.DateUtil.DATE_FORMATS
            java.util.Date r6 = new java.util.Date
            long r7 = r10.setupTimestamp
            r6.<init>(r7)
            java.lang.String r10 = org.wikipedia.util.DateUtil.getMMMMdYYYY(r6, r3)
            android.content.Context r6 = r9.getContext()
            r7 = 3
            java.lang.Object[] r8 = new java.lang.Object[r7]
            r8[r5] = r10
            r8[r3] = r0
            r8[r4] = r1
            r10 = 2131886453(0x7f120175, float:1.9407485E38)
            java.lang.String r10 = r6.getString(r10, r8)
            r10.getClass()
            android.content.Context r0 = r9.getContext()
            r1 = 2131886455(0x7f120177, float:1.940749E38)
            java.lang.String r0 = r0.getString(r1)
            r0.getClass()
            android.content.Context r1 = r9.getContext()
            r3 = 2131886454(0x7f120176, float:1.9407487E38)
            java.lang.String r1 = r1.getString(r3)
            r1.getClass()
            com.caverock.androidsvg.SVGAndroidRenderer r3 = r9.binding
            java.lang.Object r5 = r3.state
            org.wikipedia.donate.donationreminder.DonationReminderCardView r5 = (org.wikipedia.donate.donationreminder.DonationReminderCardView) r5
            java.lang.Object r3 = r3.state
            org.wikipedia.donate.donationreminder.DonationReminderCardView r3 = (org.wikipedia.donate.donationreminder.DonationReminderCardView) r3
            r5.setTitle(r2)
            r3.setMessage(r10)
            org.wikipedia.page.leadimages.PageHeaderView$$ExternalSyntheticLambda0 r10 = new org.wikipedia.page.leadimages.PageHeaderView$$ExternalSyntheticLambda0
            r10.<init>(r9, r4)
            org.wikipedia.databinding.ViewDonationReminderCardBinding r2 = r3.binding
            com.google.android.material.button.MaterialButton r4 = r2.positiveButton
            r4.setText(r0)
            com.google.android.material.button.MaterialButton r0 = r2.positiveButton
            r0.setOnClickListener(r10)
            org.wikipedia.page.leadimages.PageHeaderView$$ExternalSyntheticLambda0 r10 = new org.wikipedia.page.leadimages.PageHeaderView$$ExternalSyntheticLambda0
            r10.<init>(r9, r7)
            org.wikipedia.databinding.ViewDonationReminderCardBinding r9 = r3.binding
            com.google.android.material.button.MaterialButton r0 = r9.negativeButton
            r0.setText(r1)
            com.google.android.material.button.MaterialButton r9 = r9.negativeButton
            r9.setOnClickListener(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.leadimages.PageHeaderView.updateDonationReminderCardContent(org.wikipedia.donate.donationreminder.DonationReminderConfig):void");
    }
}
