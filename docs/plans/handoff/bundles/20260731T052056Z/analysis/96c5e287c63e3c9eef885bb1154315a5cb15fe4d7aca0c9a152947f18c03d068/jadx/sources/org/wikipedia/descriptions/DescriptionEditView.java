package org.wikipedia.descriptions;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.compose.ui.node.NodeChain;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.commons.ImagePreviewDialog;
import org.wikipedia.databinding.GroupCaptchaBinding;
import org.wikipedia.databinding.ViewDescriptionEditBinding;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditLicenseView;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda5;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.DeviceUtil;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.ViewUtil;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0007\u0018\u00002\u00020\u0001:\u0001@B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0014J\u0017\u0010\u0019\u001a\u00020\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\r\u0010\"\u001a\u00020\u0001¢\u0006\u0004\b\"\u0010#J\r\u0010%\u001a\u00020$¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\n2\u0006\u0010'\u001a\u00020\u0011H\u0002¢\u0006\u0004\b(\u0010\u0014J\u0017\u0010*\u001a\u00020\n2\u0006\u0010)\u001a\u00020\u0011H\u0002¢\u0006\u0004\b*\u0010\u0014J\u0019\u0010+\u001a\u00020\n2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b+\u0010\u001aR$\u0010\t\u001a\u0004\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00102\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b2\u00104\"\u0004\b5\u0010\u0014R\"\u00106\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00103\u001a\u0004\b7\u00104\"\u0004\b8\u0010\u0014R\"\u00109\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00103\u001a\u0004\b:\u00104\"\u0004\b;\u0010\u0014R(\u0010?\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u001b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b<\u0010=\"\u0004\b>\u0010\u001d¨\u0006A"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;", "callback", "", "setLoginCallback", "(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V", "Lorg/wikipedia/page/PageTitle;", "pageTitle", "setPageTitle", "(Lorg/wikipedia/page/PageTitle;)V", "", "allowed", "setEditAllowed", "(Z)V", "saving", "setSaveState", "", "text", "setError", "(Ljava/lang/CharSequence;)V", "", "setHighlightText", "(Ljava/lang/String;)V", "Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;", "action", "setAction", "(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V", "getDescriptionEditTextView", "()Landroid/widget/LinearLayout;", "Lorg/wikipedia/databinding/GroupCaptchaBinding;", "getCaptchaContainer", "()Lorg/wikipedia/databinding/GroupCaptchaBinding;", "inReview", "setReviewHeaderText", "enabled", "setDarkReviewScreen", "setWarning", "Lorg/wikipedia/descriptions/DescriptionEditView$Callback;", "Lorg/wikipedia/descriptions/DescriptionEditView$Callback;", "getCallback", "()Lorg/wikipedia/descriptions/DescriptionEditView$Callback;", "setCallback", "(Lorg/wikipedia/descriptions/DescriptionEditView$Callback;)V", "isSuggestionButtonEnabled", "Z", "()Z", "setSuggestionButtonEnabled", "wasSuggestionChosen", "getWasSuggestionChosen", "setWasSuggestionChosen", "wasSuggestionModified", "getWasSuggestionModified", "setWasSuggestionModified", "getDescription", "()Ljava/lang/String;", "setDescription", "description", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public DescriptionEditActivity.Action action;
    public final ViewDescriptionEditBinding binding;
    public Callback callback;
    public boolean isSuggestionButtonEnabled;
    public boolean isTextValid;
    public boolean isTranslationEdit;
    public final DescriptionEditView$$ExternalSyntheticLambda0 languageDetectRunnable;
    public final ByteString.Companion mlKitLanguageDetector;
    public String originalDescription;
    public PageSummaryForEdit pageSummaryForEdit;
    public PageTitle pageTitle;
    public final DescriptionEditView$$ExternalSyntheticLambda0 textValidateRunnable;
    public boolean wasSuggestionChosen;
    public boolean wasSuggestionModified;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DescriptionEditActivity.Action.values().length];
            try {
                iArr[DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DescriptionEditActivity.Action.ADD_CAPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DescriptionEditActivity.Action.TRANSLATE_CAPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptionEditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_description_edit, this);
        int i = R.id.captcha_container;
        View findChildViewById = Room.findChildViewById(this, R.id.captcha_container);
        if (findChildViewById != null) {
            GroupCaptchaBinding bind = GroupCaptchaBinding.bind(findChildViewById);
            i = R.id.learnMoreButton;
            MaterialButton materialButton = (MaterialButton) Room.findChildViewById(this, R.id.learnMoreButton);
            if (materialButton != null) {
                i = R.id.suggestedDescButton;
                Chip chip = (Chip) Room.findChildViewById(this, R.id.suggestedDescButton);
                if (chip != null) {
                    i = R.id.view_description_edit_cancel_button;
                    ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.view_description_edit_cancel_button);
                    if (imageView != null) {
                        i = R.id.view_description_edit_container;
                        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.view_description_edit_container);
                        if (linearLayout != null) {
                            i = R.id.view_description_edit_header;
                            TextView textView = (TextView) Room.findChildViewById(this, R.id.view_description_edit_header);
                            if (textView != null) {
                                i = R.id.view_description_edit_page_summary;
                                TextView textView2 = (TextView) Room.findChildViewById(this, R.id.view_description_edit_page_summary);
                                if (textView2 != null) {
                                    i = R.id.view_description_edit_page_summary_container;
                                    LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(this, R.id.view_description_edit_page_summary_container);
                                    if (linearLayout2 != null) {
                                        i = R.id.view_description_edit_page_summary_label;
                                        TextView textView3 = (TextView) Room.findChildViewById(this, R.id.view_description_edit_page_summary_label);
                                        if (textView3 != null) {
                                            i = R.id.view_description_edit_progress_bar;
                                            LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(this, R.id.view_description_edit_progress_bar);
                                            if (linearProgressIndicator != null) {
                                                i = R.id.view_description_edit_read_article_bar_container;
                                                DescriptionEditBottomBarView descriptionEditBottomBarView = (DescriptionEditBottomBarView) Room.findChildViewById(this, R.id.view_description_edit_read_article_bar_container);
                                                if (descriptionEditBottomBarView != null) {
                                                    i = R.id.view_description_edit_review_container;
                                                    DescriptionEditReviewView descriptionEditReviewView = (DescriptionEditReviewView) Room.findChildViewById(this, R.id.view_description_edit_review_container);
                                                    if (descriptionEditReviewView != null) {
                                                        i = R.id.view_description_edit_save_button;
                                                        TextView textView4 = (TextView) Room.findChildViewById(this, R.id.view_description_edit_save_button);
                                                        if (textView4 != null) {
                                                            i = R.id.view_description_edit_scrollview;
                                                            ScrollView scrollView = (ScrollView) Room.findChildViewById(this, R.id.view_description_edit_scrollview);
                                                            if (scrollView != null) {
                                                                i = R.id.view_description_edit_text;
                                                                PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(this, R.id.view_description_edit_text);
                                                                if (plainPasteEditText != null) {
                                                                    i = R.id.view_description_edit_text_layout;
                                                                    TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(this, R.id.view_description_edit_text_layout);
                                                                    if (textInputLayout != null) {
                                                                        i = R.id.view_description_edit_toolbar_container;
                                                                        FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(this, R.id.view_description_edit_toolbar_container);
                                                                        if (frameLayout != null) {
                                                                            i = R.id.view_description_editing;
                                                                            if (((LinearLayout) Room.findChildViewById(this, R.id.view_description_editing)) != null) {
                                                                                this.binding = new ViewDescriptionEditBinding(this, bind, materialButton, chip, imageView, linearLayout, textView, textView2, linearLayout2, textView3, linearProgressIndicator, descriptionEditBottomBarView, descriptionEditReviewView, textView4, scrollView, plainPasteEditText, textInputLayout, frameLayout);
                                                                                this.mlKitLanguageDetector = new ByteString.Companion(17);
                                                                                int i2 = 0;
                                                                                this.languageDetectRunnable = new DescriptionEditView$$ExternalSyntheticLambda0(this, i2);
                                                                                int i3 = 3;
                                                                                this.textValidateRunnable = new DescriptionEditView$$ExternalSyntheticLambda0(this, i3);
                                                                                int i4 = 2;
                                                                                int i5 = 1;
                                                                                View[] viewArr = {textView4, imageView};
                                                                                for (int i6 = 0; i6 < 2; i6++) {
                                                                                    View view = viewArr[i6];
                                                                                    RegexKt.setTooltipText(view, view.getContentDescription());
                                                                                }
                                                                                setOrientation(1);
                                                                                textView4.setOnClickListener(new DescriptionEditView$$ExternalSyntheticLambda2(this, i2));
                                                                                imageView.setOnClickListener(new DescriptionEditView$$ExternalSyntheticLambda2(this, i4));
                                                                                linearLayout2.setOnClickListener(new DescriptionEditView$$ExternalSyntheticLambda2(this, i3));
                                                                                plainPasteEditText.addTextChangedListener(new SearchView.AnonymousClass10(2, this));
                                                                                plainPasteEditText.setOnEditorActionListener(new LoginActivity$$ExternalSyntheticLambda5(i5, this));
                                                                                materialButton.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(5, context, this));
                                                                                return;
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
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    private final void setDarkReviewScreen(boolean enabled) {
        int i;
        int i2;
        int i3;
        int i4;
        Context context = getContext();
        List listOf = Room.listOf((Object[]) new DescriptionEditActivity.Action[]{DescriptionEditActivity.Action.ADD_CAPTION, DescriptionEditActivity.Action.TRANSLATE_CAPTION});
        if ((context instanceof DescriptionEditActivity) && CollectionsKt.contains(listOf, this.action)) {
            ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
            FrameLayout frameLayout = viewDescriptionEditBinding.viewDescriptionEditToolbarContainer;
            if (enabled) {
                i = android.R.color.black;
            } else {
                TypedValue typedValue = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                    return;
                }
                i = typedValue.resourceId;
            }
            frameLayout.setBackgroundResource(i);
            TextView textView = viewDescriptionEditBinding.viewDescriptionEditSaveButton;
            int i5 = -1;
            if (enabled) {
                i2 = -1;
            } else {
                TypedValue typedValue2 = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.progressive_color, typedValue2, true)) {
                    typedValue2 = null;
                }
                if (typedValue2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                    return;
                }
                i2 = typedValue2.data;
            }
            textView.setTextColor(i2);
            ImageView imageView = viewDescriptionEditBinding.viewDescriptionEditCancelButton;
            if (enabled) {
                i3 = -1;
            } else {
                TypedValue typedValue3 = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.placeholder_color, typedValue3, true)) {
                    typedValue3 = null;
                }
                if (typedValue3 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969851");
                    return;
                }
                i3 = typedValue3.data;
            }
            imageView.setImageTintList(ColorStateList.valueOf(i3));
            TextView textView2 = viewDescriptionEditBinding.viewDescriptionEditHeader;
            if (!enabled) {
                TypedValue typedValue4 = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.primary_color, typedValue4, true)) {
                    typedValue4 = null;
                }
                if (typedValue4 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
                    return;
                }
                i5 = typedValue4.data;
            }
            textView2.setTextColor(i5);
            if (enabled) {
                i4 = -16777216;
            } else {
                TypedValue typedValue5 = new TypedValue();
                if (!context.getTheme().resolveAttribute(R.attr.paper_color, typedValue5, true)) {
                    typedValue5 = null;
                }
                if (typedValue5 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                    return;
                }
                i4 = typedValue5.data;
            }
            DescriptionEditActivity descriptionEditActivity = (DescriptionEditActivity) context;
            descriptionEditActivity.setStatusBarColor(i4);
            DeviceUtil.updateStatusBarTheme((Activity) context, null, enabled);
            descriptionEditActivity.setNavigationBarColor(i4);
        }
    }

    private final void setReviewHeaderText(boolean inReview) {
        int i;
        TextView textView = this.binding.viewDescriptionEditHeader;
        Context context = getContext();
        if (inReview) {
            DescriptionEditActivity.Action action = this.action;
            i = (action == DescriptionEditActivity.Action.ADD_CAPTION || action == DescriptionEditActivity.Action.TRANSLATE_CAPTION) ? R.string.suggested_edits_review_image_caption : R.string.suggested_edits_review_description;
        } else {
            String str = this.originalDescription;
            if (str == null || str.length() == 0) {
                DescriptionEditActivity.Action action2 = this.action;
                int i2 = action2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[action2.ordinal()];
                i = i2 != 1 ? i2 != 2 ? i2 != 3 ? R.string.suggested_edits_add_description_button : R.string.description_edit_translate_image_caption : R.string.description_edit_add_image_caption : R.string.description_edit_translate_description;
            } else {
                DescriptionEditActivity.Action action3 = this.action;
                i = (action3 == DescriptionEditActivity.Action.ADD_CAPTION || action3 == DescriptionEditActivity.Action.TRANSLATE_CAPTION) ? R.string.description_edit_edit_image_caption : R.string.description_edit_edit_description;
            }
        }
        textView.setText(context.getString(i));
    }

    private final void setWarning(CharSequence text) {
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        viewDescriptionEditBinding.viewDescriptionEditTextLayout.setErrorIconDrawable(R.drawable.ic_warning_24);
        ColorStateList colorStateList = FileUtil.getColorStateList(getContext(), R.color.yellow700);
        TextInputLayout textInputLayout = viewDescriptionEditBinding.viewDescriptionEditTextLayout;
        textInputLayout.setErrorIconTintList(colorStateList);
        textInputLayout.setErrorTextColor(colorStateList);
        textInputLayout.setBoxStrokeErrorColor(colorStateList);
        layoutErrorState(text);
    }

    public final void enableSaveButton(boolean z, boolean z2) {
        TypedValue typedValue;
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        if (z2) {
            TextView textView = viewDescriptionEditBinding.viewDescriptionEditSaveButton;
            TextView textView2 = viewDescriptionEditBinding.viewDescriptionEditSaveButton;
            Context context = getContext();
            TypedValue m = ViewSizeResolver$CC.m(context);
            typedValue = context.getTheme().resolveAttribute(R.attr.progressive_color, m, true) ? m : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                return;
            }
            textView.setTextColor(typedValue.data);
            textView2.setEnabled(false);
            textView2.setAlpha(0.5f);
            return;
        }
        TextView textView3 = viewDescriptionEditBinding.viewDescriptionEditSaveButton;
        TextView textView4 = viewDescriptionEditBinding.viewDescriptionEditSaveButton;
        textView3.setAlpha(1.0f);
        if (!z) {
            Context context2 = getContext();
            context2.getClass();
            textView4.setTextColor(Cache.Companion.getThemedColorStateList(context2, R.attr.placeholder_color));
            textView4.setEnabled(false);
            return;
        }
        Context context3 = getContext();
        TypedValue m2 = ViewSizeResolver$CC.m(context3);
        typedValue = context3.getTheme().resolveAttribute(R.attr.progressive_color, m2, true) ? m2 : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
        } else {
            textView4.setTextColor(typedValue.data);
            textView4.setEnabled(true);
        }
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final GroupCaptchaBinding getCaptchaContainer() {
        return this.binding.captchaContainer;
    }

    public final String getDescription() {
        return StringsKt.trim(String.valueOf(this.binding.viewDescriptionEditText.getText())).toString();
    }

    public final LinearLayout getDescriptionEditTextView() {
        return this.binding.viewDescriptionEditTextLayout;
    }

    public final boolean getWasSuggestionChosen() {
        return this.wasSuggestionChosen;
    }

    public final boolean getWasSuggestionModified() {
        return this.wasSuggestionModified;
    }

    public final void layoutErrorState(CharSequence charSequence) {
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        viewDescriptionEditBinding.viewDescriptionEditTextLayout.setError(null);
        viewDescriptionEditBinding.viewDescriptionEditTextLayout.setErrorEnabled(false);
        viewDescriptionEditBinding.viewDescriptionEditTextLayout.setErrorEnabled(true);
        viewDescriptionEditBinding.viewDescriptionEditTextLayout.setError(charSequence);
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        post(new DescriptionEditView$$ExternalSyntheticLambda0(this, 4));
    }

    public final void loadReviewContent(boolean z) {
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        if (z) {
            DescriptionEditReviewView descriptionEditReviewView = viewDescriptionEditBinding.viewDescriptionEditReviewContainer;
            DescriptionEditReviewView descriptionEditReviewView2 = viewDescriptionEditBinding.viewDescriptionEditReviewContainer;
            PageSummaryForEdit pageSummaryForEdit = this.pageSummaryForEdit;
            if (pageSummaryForEdit == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageSummaryForEdit");
                throw null;
            }
            String description = getDescription();
            if (description == null) {
                description = "";
            }
            DescriptionEditActivity.Action action = this.action;
            boolean z2 = action == DescriptionEditActivity.Action.ADD_CAPTION || action == DescriptionEditActivity.Action.TRANSLATE_CAPTION;
            String str = pageSummaryForEdit.thumbnailUrl;
            String str2 = pageSummaryForEdit.lang;
            BitmapsKt.setLayoutDirectionByLang(descriptionEditReviewView, str2);
            NodeChain nodeChain = descriptionEditReviewView.binding;
            if (z2) {
                ScrollView scrollView = (ScrollView) nodeChain.layoutNode;
                DescriptionEditLicenseView descriptionEditLicenseView = (DescriptionEditLicenseView) nodeChain.cachedDiffer;
                ImageView imageView = (ImageView) nodeChain.buffer;
                scrollView.setVisibility(8);
                ((View) nodeChain.stack).setVisibility(8);
                AppTextView appTextView = (AppTextView) nodeChain.current;
                StringUtil stringUtil = StringUtil.INSTANCE;
                appTextView.setText(StringUtil.fromHtml(description));
                if (str == null || StringsKt.isBlank(str)) {
                    imageView.setVisibility(8);
                } else {
                    imageView.setVisibility(0);
                    ViewUtil.loadImage$default(imageView, pageSummaryForEdit.getPreferredSizeThumbnailUrl(), null, 28);
                }
                Context context = descriptionEditLicenseView.getContext();
                context.getClass();
                ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, R.attr.placeholder_color);
                descriptionEditLicenseView.setBackgroundResource(android.R.color.black);
                OkHttpCall.AnonymousClass1 anonymousClass1 = descriptionEditLicenseView.binding;
                MaterialTextView materialTextView = (MaterialTextView) anonymousClass1.this$0;
                TextView textView = (TextView) anonymousClass1.val$callback;
                materialTextView.setTextColor(themedColorStateList);
                materialTextView.setLinkTextColor(themedColorStateList);
                UuidKt.setCompoundDrawableTintList(materialTextView, themedColorStateList);
                textView.setTextColor(themedColorStateList);
                textView.setLinkTextColor(themedColorStateList);
                descriptionEditLicenseView.buildLicenseNotice("imageCaptionNotice", null);
            } else {
                FrameLayout frameLayout = (FrameLayout) nodeChain.head;
                FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) nodeChain.innerCoordinator;
                TextView textView2 = (TextView) nodeChain.sentinelHead;
                frameLayout.setVisibility(8);
                TextView textView3 = (TextView) nodeChain.tail;
                StringUtil stringUtil2 = StringUtil.INSTANCE;
                textView3.setText(StringUtil.fromHtml(pageSummaryForEdit.displayTitle));
                ((GoneIfEmptyTextView) nodeChain.outerCoordinator).setText(description);
                textView2.setText(StringUtil.fromHtml(pageSummaryForEdit.extractHtml));
                if (str == null || StringsKt.isBlank(str)) {
                    faceAndColorDetectImageView.setVisibility(8);
                    textView2.setMaxLines(5);
                } else {
                    faceAndColorDetectImageView.setVisibility(0);
                    faceAndColorDetectImageView.loadImage(Uri.parse(pageSummaryForEdit.getPreferredSizeThumbnailUrl()), null);
                    textView2.setMaxLines(2);
                }
                DescriptionEditLicenseView descriptionEditLicenseView2 = (DescriptionEditLicenseView) nodeChain.cachedDiffer;
                String str3 = pageSummaryForEdit.description;
                descriptionEditLicenseView2.buildLicenseNotice((str3 == null || str3.length() == 0) ? "articleDescriptionNotice" : "defaultNotice", str2);
            }
            descriptionEditReviewView2.setVisibility(0);
            viewDescriptionEditBinding.viewDescriptionEditReadArticleBarContainer.setVisibility(8);
            viewDescriptionEditBinding.viewDescriptionEditContainer.setVisibility(8);
            Object systemService = descriptionEditReviewView2.getContext().getSystemService("input_method");
            systemService.getClass();
            ((InputMethodManager) systemService).hideSoftInputFromWindow(descriptionEditReviewView2.getWindowToken(), 0);
        } else {
            viewDescriptionEditBinding.viewDescriptionEditReviewContainer.setVisibility(8);
            viewDescriptionEditBinding.viewDescriptionEditReadArticleBarContainer.setVisibility(0);
            viewDescriptionEditBinding.viewDescriptionEditContainer.setVisibility(0);
        }
        setReviewHeaderText(z);
        setDarkReviewScreen(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.languageDetectRunnable);
        removeCallbacks(this.textValidateRunnable);
    }

    public final void performReadArticleClick() {
        DescriptionEditFragment.Callback callback;
        PageSummaryForEdit pageSummaryForEdit;
        Callback callback2 = this.callback;
        if (callback2 == null || (callback = ((DescriptionEditFragment) ((AvPlayer) callback2).player).callback()) == null) {
            return;
        }
        DescriptionEditActivity descriptionEditActivity = (DescriptionEditActivity) callback;
        if (descriptionEditActivity.getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) {
            pageSummaryForEdit = descriptionEditActivity.getViewModel().targetSummary;
            pageSummaryForEdit.getClass();
        } else {
            pageSummaryForEdit = descriptionEditActivity.getViewModel().sourceSummary;
            pageSummaryForEdit.getClass();
        }
        if (descriptionEditActivity.getViewModel().action == DescriptionEditActivity.Action.ADD_CAPTION || descriptionEditActivity.getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_CAPTION) {
            FragmentManagerImpl supportFragmentManager = descriptionEditActivity.getSupportFragmentManager();
            DescriptionEditActivity.Action action = descriptionEditActivity.getViewModel().action;
            ImagePreviewDialog imagePreviewDialog = new ImagePreviewDialog();
            imagePreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("summary", pageSummaryForEdit), new Pair("action", action)));
            Okio__OkioKt.show(supportFragmentManager, imagePreviewDialog);
            return;
        }
        FragmentManagerImpl supportFragmentManager2 = descriptionEditActivity.getSupportFragmentManager();
        HistoryEntry historyEntry = new HistoryEntry(descriptionEditActivity.getViewModel().invokeSource == Constants.InvokeSource.PAGE_ACTIVITY ? 28 : 30, pageSummaryForEdit.pageTitle);
        LinkPreviewDialog linkPreviewDialog = new LinkPreviewDialog();
        linkPreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("entry", historyEntry), new Pair("location", null), new Pair("lastKnownLocation", null)));
        Okio__OkioKt.show(supportFragmentManager2, linkPreviewDialog);
    }

    public final void setAction(DescriptionEditActivity.Action action) {
        action.getClass();
        this.action = action;
        this.isTranslationEdit = action == DescriptionEditActivity.Action.TRANSLATE_CAPTION || action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setDescription(String str) {
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        viewDescriptionEditBinding.viewDescriptionEditText.setText(str);
        if (str == null || str.length() == 0) {
            return;
        }
        viewDescriptionEditBinding.viewDescriptionEditText.setSelection(str.length());
    }

    public final void setEditAllowed(boolean allowed) {
        enableSaveButton(allowed, false);
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        TextInputLayout textInputLayout = viewDescriptionEditBinding.viewDescriptionEditTextLayout;
        PlainPasteEditText plainPasteEditText = viewDescriptionEditBinding.viewDescriptionEditText;
        textInputLayout.setEnabled(allowed);
        if (allowed) {
            plainPasteEditText.requestFocus();
            Object systemService = plainPasteEditText.getContext().getSystemService("input_method");
            systemService.getClass();
            ((InputMethodManager) systemService).showSoftInput(plainPasteEditText, 1);
        }
    }

    public final void setError(CharSequence text) {
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        viewDescriptionEditBinding.viewDescriptionEditTextLayout.setErrorIconDrawable(R.drawable.ic_error_black_24dp);
        Context context = getContext();
        context.getClass();
        ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, R.attr.colorError);
        TextInputLayout textInputLayout = viewDescriptionEditBinding.viewDescriptionEditTextLayout;
        textInputLayout.setErrorIconTintList(themedColorStateList);
        textInputLayout.setErrorTextColor(themedColorStateList);
        textInputLayout.setBoxStrokeErrorColor(themedColorStateList);
        layoutErrorState(text);
    }

    public final void setHighlightText(String text) {
        if (text == null || this.originalDescription == null) {
            return;
        }
        postDelayed(new Processor$$ExternalSyntheticLambda2(20, this, text), 500L);
    }

    public final void setLoginCallback(DescriptionEditLicenseView.Callback callback) {
        callback.getClass();
        this.binding.viewDescriptionEditReviewContainer.setLoginCallback(callback);
    }

    public final void setPageTitle(PageTitle pageTitle) {
        String string;
        pageTitle.getClass();
        this.pageTitle = pageTitle;
        this.originalDescription = pageTitle.description;
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        TextInputLayout textInputLayout = viewDescriptionEditBinding.viewDescriptionEditTextLayout;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        textInputLayout.setEndIconVisible(((Boolean) Jsoup.getInstance().voiceRecognitionAvailable$delegate.getValue()).booleanValue());
        TextInputLayout textInputLayout2 = viewDescriptionEditBinding.viewDescriptionEditTextLayout;
        textInputLayout2.setEndIconOnClickListener(new DescriptionEditView$$ExternalSyntheticLambda2(this, 4));
        textInputLayout2.setHintTextAppearance(R.style.Small);
        Context context = getContext();
        context.getClass();
        textInputLayout2.setHintTextColor(Cache.Companion.getThemedColorStateList(context, R.attr.progressive_color));
        PageTitle pageTitle2 = this.pageTitle;
        if (pageTitle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
            throw null;
        }
        String str = pageTitle2.wikiSite.languageCode;
        DescriptionEditActivity.Action action = this.action;
        int i = action == null ? -1 : WhenMappings.$EnumSwitchMapping$0[action.ordinal()];
        if (i == 1) {
            string = getContext().getString(R.string.description_edit_translate_article_description_hint_per_language, Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(str));
            string.getClass();
        } else if (i == 2 || i == 3) {
            string = getContext().getString(R.string.description_edit_translate_caption_hint_per_language, Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(str));
            string.getClass();
        } else {
            string = getContext().getString(R.string.description_edit_text_hint);
            string.getClass();
        }
        textInputLayout2.setHint(string);
        setDescription(this.originalDescription);
        setReviewHeaderText(false);
        textInputLayout2.setCounterMaxLength(getResources().getInteger(Intrinsics.areEqual(pageTitle.wikiSite.languageCode, "en") ? R.integer.description_max_chars_en : R.integer.description_max_chars));
    }

    public final void setSaveState(boolean saving) {
        showProgressBar(saving);
        if (saving) {
            enableSaveButton(false, true);
        } else {
            updateSaveButtonEnabled();
        }
    }

    public final void setSuggestionButtonEnabled(boolean z) {
        this.isSuggestionButtonEnabled = z;
    }

    public final void setWasSuggestionChosen(boolean z) {
        this.wasSuggestionChosen = z;
    }

    public final void setWasSuggestionModified(boolean z) {
        this.wasSuggestionModified = z;
    }

    public final void showProgressBar(boolean z) {
        this.binding.viewDescriptionEditProgressBar.setVisibility(z ? 0 : 8);
    }

    public final boolean showingReviewContent() {
        return this.binding.viewDescriptionEditReviewContainer.getVisibility() == 0;
    }

    public final void updateSaveButtonEnabled() {
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        Editable text = viewDescriptionEditBinding.viewDescriptionEditText.getText();
        if (text != null && text.length() != 0) {
            String str = this.originalDescription;
            if (str == null) {
                str = "";
            }
            if (!str.equals(String.valueOf(viewDescriptionEditBinding.viewDescriptionEditText.getText())) && this.isTextValid) {
                enableSaveButton(true, false);
                return;
            }
        }
        enableSaveButton(false, false);
    }

    public final void updateSuggestedDescriptionsButtonVisibility() {
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        Chip chip = viewDescriptionEditBinding.suggestedDescButton;
        CharSequence error = viewDescriptionEditBinding.viewDescriptionEditTextLayout.getError();
        chip.setVisibility(((error == null || error.length() == 0) && this.isSuggestionButtonEnabled) ? 0 : 8);
    }

    public final void validateText() {
        List list;
        this.isTextValid = true;
        PageTitle pageTitle = this.pageTitle;
        if (pageTitle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
            throw null;
        }
        List listOf = Intrinsics.areEqual(pageTitle.wikiSite.languageCode, "cs") ? Room.listOf((Object[]) new String[]{",", "!", "?"}) : Room.listOf((Object[]) new String[]{".", ",", "!", "?"});
        ViewDescriptionEditBinding viewDescriptionEditBinding = this.binding;
        String valueOf = String.valueOf(viewDescriptionEditBinding.viewDescriptionEditText.getText());
        Locale locale = Locale.getDefault();
        locale.getClass();
        String lowerCase = valueOf.toLowerCase(locale);
        lowerCase.getClass();
        String obj = StringsKt.trim(lowerCase).toString();
        if (obj.length() == 0) {
            this.isTextValid = false;
            viewDescriptionEditBinding.viewDescriptionEditTextLayout.setError(null);
            viewDescriptionEditBinding.viewDescriptionEditTextLayout.setErrorEnabled(false);
        } else if (obj.length() < 2) {
            this.isTextValid = false;
            setError(getContext().getString(R.string.description_too_short));
        } else {
            DescriptionEditActivity.Action action = this.action;
            if ((action == DescriptionEditActivity.Action.ADD_DESCRIPTION || action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) && !listOf.isEmpty()) {
                Iterator it = listOf.iterator();
                while (it.hasNext()) {
                    if (StringsKt__StringsJVMKt.endsWith(obj, (String) it.next(), false)) {
                        this.isTextValid = false;
                        setError(getContext().getString(R.string.description_ends_with_punctuation));
                        break;
                    }
                }
            }
            PageTitle pageTitle2 = this.pageTitle;
            if (pageTitle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                throw null;
            }
            if (!Intrinsics.areEqual(pageTitle2.wikiSite.languageCode, "en") || obj.length() <= getResources().getInteger(R.integer.description_max_chars_en)) {
                DescriptionEditActivity.Action action2 = this.action;
                DescriptionEditActivity.Action action3 = DescriptionEditActivity.Action.ADD_DESCRIPTION;
                if (action2 == action3 || action2 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) {
                    PageTitle pageTitle3 = this.pageTitle;
                    if (pageTitle3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                        throw null;
                    }
                    String str = pageTitle3.wikiSite.languageCode;
                    str.getClass();
                    Pattern compile = Pattern.compile(" ");
                    compile.getClass();
                    Matcher matcher = compile.matcher(obj);
                    if (matcher.find()) {
                        ArrayList arrayList = new ArrayList(10);
                        int i = 0;
                        do {
                            arrayList.add(obj.subSequence(i, matcher.start()).toString());
                            i = matcher.end();
                        } while (matcher.find());
                        arrayList.add(obj.subSequence(i, obj.length()).toString());
                        list = arrayList;
                    } else {
                        list = Room.listOf(obj.toString());
                    }
                    String str2 = ((String[]) list.toArray(new String[0]))[0];
                    Locale locale2 = Locale.getDefault();
                    locale2.getClass();
                    String lowerCase2 = str2.toLowerCase(locale2);
                    lowerCase2.getClass();
                    String obj2 = StringsKt.trim(lowerCase2).toString();
                    if ((str.equals("en") && StringUtils.equalsAny(obj2, "a", "an", "the")) || ((str.equals("de") && StringUtils.equalsAny(obj2, "der", "den", "dem", "des", "das", "die", "den", "ein", "eine", "einer", "einen", "einem", "eines", "keine", "keinen", "keiner")) || ((str.equals("es") && StringUtils.equalsAny(obj2, "el", "los", "la", "las", "un", "unos", "una", "unas")) || (str.equals("fr") && (StringUtils.equalsAny(obj2, "le", "la", "les", "un", "une", "des") || StringsKt__StringsJVMKt.startsWith(obj2, "l'", false)))))) {
                        setWarning(getContext().getString(R.string.description_starts_with_article));
                    }
                }
                DescriptionEditActivity.Action action4 = this.action;
                if (action4 == action3 || action4 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) {
                    PageTitle pageTitle4 = this.pageTitle;
                    if (pageTitle4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                        throw null;
                    }
                    if (Intrinsics.areEqual(pageTitle4.wikiSite.languageCode, "en") && Character.isLowerCase(String.valueOf(viewDescriptionEditBinding.viewDescriptionEditText.getText()).charAt(0))) {
                        setWarning(getContext().getString(R.string.description_starts_with_lowercase));
                    }
                }
                viewDescriptionEditBinding.viewDescriptionEditTextLayout.setError(null);
                viewDescriptionEditBinding.viewDescriptionEditTextLayout.setErrorEnabled(false);
            } else {
                setWarning(getContext().getString(R.string.description_too_long));
            }
        }
        updateSaveButtonEnabled();
        updateSuggestedDescriptionsButtonVisibility();
    }
}
