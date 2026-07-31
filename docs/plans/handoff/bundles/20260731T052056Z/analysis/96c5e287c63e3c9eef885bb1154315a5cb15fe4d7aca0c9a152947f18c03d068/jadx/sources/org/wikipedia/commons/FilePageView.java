package org.wikipedia.commons;

import android.content.Context;
import android.icu.text.ListFormatter;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ViewFilePageBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.gallery.ExtMetadata;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.ImageDetailView;
import org.wikipedia.views.ViewUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lorg/wikipedia/commons/FilePageView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/databinding/ViewFilePageBinding;", "binding", "Lorg/wikipedia/databinding/ViewFilePageBinding;", "getBinding", "()Lorg/wikipedia/databinding/ViewFilePageBinding;", "org/wikipedia/commons/FilePageFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FilePageView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ViewFilePageBinding binding;
    public final LinkMovementMethodExt movementMethod;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilePageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_file_page, this);
        int i = R.id.detailsContainer;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.detailsContainer);
        if (linearLayout != null) {
            i = R.id.filenameView;
            ImageDetailView imageDetailView = (ImageDetailView) Room.findChildViewById(this, R.id.filenameView);
            if (imageDetailView != null) {
                i = R.id.imageView;
                ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.imageView);
                if (imageView != null) {
                    i = R.id.imageViewPlaceholder;
                    FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(this, R.id.imageViewPlaceholder);
                    if (frameLayout != null) {
                        this.binding = new ViewFilePageBinding(this, linearLayout, imageDetailView, imageView, frameLayout);
                        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                        this.movementMethod = new LinkMovementMethodExt(new FilePageView$$ExternalSyntheticLambda1(context));
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public static void addDetail$default(FilePageView filePageView, String str, String str2, String str3, HomeFragment$$ExternalSyntheticLambda8 homeFragment$$ExternalSyntheticLambda8, int i) {
        boolean z = (i & 1) != 0;
        if ((i & 8) != 0) {
            str3 = null;
        }
        if ((i & 16) != 0) {
            homeFragment$$ExternalSyntheticLambda8 = null;
        }
        if (str2 == null || str2.length() == 0) {
            return;
        }
        Context context = filePageView.getContext();
        context.getClass();
        ImageDetailView imageDetailView = new ImageDetailView(context, null);
        imageDetailView.getBinding().titleText.setText(str);
        TextView textView = imageDetailView.getBinding().contentText;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringsKt.trim(StringUtil.fromHtml(StringUtil.removeStyleTags(str2))));
        if (str3 == null || str3.length() == 0) {
            imageDetailView.getBinding().contentText.setMovementMethod(filePageView.movementMethod);
        } else {
            TextView textView2 = imageDetailView.getBinding().contentText;
            Context context2 = filePageView.getContext();
            TypedValue m = ViewSizeResolver$CC.m(context2);
            TypedValue typedValue = context2.getTheme().resolveAttribute(R.attr.progressive_color, m, true) ? m : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                return;
            }
            textView2.setTextColor(typedValue.data);
            imageDetailView.getBinding().contentText.setTextIsSelectable(false);
            imageDetailView.getBinding().externalLink.setVisibility(0);
            imageDetailView.getBinding().contentContainer.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(2, filePageView, str3));
        }
        if (!z) {
            imageDetailView.getBinding().divider.setVisibility(8);
        }
        if (homeFragment$$ExternalSyntheticLambda8 != null) {
            imageDetailView.getBinding().editButton.setVisibility(0);
            imageDetailView.getBinding().editButton.setOnClickListener(homeFragment$$ExternalSyntheticLambda8);
            imageDetailView.getBinding().editButton.setContentDescription(filePageView.getContext().getString(R.string.file_page_edit_button_content_description, str));
        }
        filePageView.binding.detailsContainer.addView(imageDetailView);
    }

    public static String getProperLanguageCode(PageSummaryForEdit pageSummaryForEdit, boolean z) {
        if (z && !Intrinsics.areEqual(pageSummaryForEdit.lang, "commons")) {
            return pageSummaryForEdit.lang;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return ViewSizeResolver$CC.m();
    }

    public static void setup$default(FilePageView filePageView, PageSummaryForEdit pageSummaryForEdit, Map map, MwQueryPage mwQueryPage, int i, int i2, int i3, boolean z, boolean z2, boolean z3, DescriptionEditActivity.Action action, FilePageFragment filePageFragment, int i4) {
        int i5;
        String joinToString$default;
        String str;
        FilePageView filePageView2 = filePageView;
        DescriptionEditActivity.Action action2 = (i4 & 512) != 0 ? null : action;
        FilePageFragment filePageFragment2 = (i4 & 1024) != 0 ? null : filePageFragment;
        pageSummaryForEdit.getClass();
        String str2 = pageSummaryForEdit.description;
        PageTitle pageTitle = pageSummaryForEdit.pageTitle;
        map.getClass();
        mwQueryPage.getClass();
        ViewFilePageBinding viewFilePageBinding = filePageView2.binding;
        ImageView imageView = viewFilePageBinding.imageView;
        ImageDetailView imageDetailView = viewFilePageBinding.filenameView;
        if (imageView.getTag() == null || !(imageView.getTag() instanceof Integer)) {
            i5 = 0;
        } else {
            Object tag = imageView.getTag();
            tag.getClass();
            i5 = ((Integer) tag).intValue();
        }
        imageView.setTag(Integer.valueOf(i5 | 1));
        ImageView imageView2 = viewFilePageBinding.imageView;
        Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
        String str3 = pageSummaryForEdit.thumbnailUrl;
        str3.getClass();
        ViewUtil.loadImage$default(imageView2, ImageUrlUtil.getUrlForPreferredSize(1280, str3), null, 8);
        viewFilePageBinding.imageViewPlaceholder.setLayoutParams(new LinearLayout.LayoutParams(i, (int) ((((1280.0f / i2) * i3) * i) / 1280.0f)));
        int i6 = 3;
        if (z2) {
            imageDetailView.setVisibility(0);
            imageDetailView.getBinding().titleText.setText(filePageView2.getContext().getString(z ? R.string.suggested_edits_image_preview_dialog_file_commons : R.string.suggested_edits_image_preview_dialog_image));
            imageDetailView.getBinding().contentText.setTextIsSelectable(false);
            imageDetailView.getBinding().contentText.setMaxLines(3);
            imageDetailView.getBinding().contentText.setEllipsize(TextUtils.TruncateAt.END);
            TextView textView = imageDetailView.getBinding().contentText;
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringUtil.removeNamespace(pageSummaryForEdit.displayTitle));
            imageDetailView.getBinding().divider.setVisibility(8);
        }
        viewFilePageBinding.detailsContainer.removeAllViews();
        String str4 = pageTitle.description;
        if ((str4 == null || str4.length() == 0) && ((str2 == null || str2.length() == 0) && z3)) {
            String string = filePageView2.getContext().getString(R.string.file_page_add_image_caption_button);
            string.getClass();
            filePageView2.addActionButton(string, new HomeFragment$$ExternalSyntheticLambda8(i6, filePageFragment2, pageSummaryForEdit));
        } else if ((action2 == DescriptionEditActivity.Action.ADD_CAPTION || action2 == null) && ((str = pageTitle.description) == null || str.length() == 0)) {
            String string2 = filePageView.getContext().getString(R.string.description_edit_add_caption_label);
            string2.getClass();
            filePageView2 = filePageView;
            addDetail$default(filePageView2, string2, pageSummaryForEdit.description, null, z3 ? new HomeFragment$$ExternalSyntheticLambda8(i6, filePageFragment2, pageSummaryForEdit) : null, 9);
        } else {
            Context context = filePageView2.getContext();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String string3 = context.getString(R.string.suggested_edits_image_preview_dialog_caption_in_language_title, Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(getProperLanguageCode(pageSummaryForEdit, z)));
            string3.getClass();
            String str5 = pageTitle.description;
            if (str5 != null && str5.length() != 0) {
                str2 = pageTitle.description;
            }
            addDetail$default(filePageView2, string3, str2, null, z3 ? new HomeFragment$$ExternalSyntheticLambda8(i6, filePageFragment2, pageSummaryForEdit) : null, 9);
            filePageView2 = filePageView;
        }
        if ((map.isEmpty() || !map.containsKey(getProperLanguageCode(pageSummaryForEdit, z))) && z3) {
            String string4 = filePageView2.getContext().getString(R.string.file_page_add_image_tags_button);
            string4.getClass();
            filePageView2.addActionButton(string4, new HomeFragment$$ExternalSyntheticLambda8(4, filePageFragment2, mwQueryPage));
        } else {
            String string5 = filePageView2.getContext().getString(R.string.suggested_edits_image_tags);
            string5.getClass();
            String properLanguageCode = getProperLanguageCode(pageSummaryForEdit, z);
            if (map.containsKey(properLanguageCode)) {
                if (Build.VERSION.SDK_INT < 26 || map.isEmpty()) {
                    List list = (List) map.get(properLanguageCode);
                    if (list != null) {
                        joinToString$default = CollectionsKt.joinToString$default(list, "\n", null, null, null, 62);
                    }
                } else {
                    joinToString$default = ListFormatter.getInstance(new Locale(properLanguageCode)).format((Collection<?>) map.get(properLanguageCode));
                }
                addDetail$default(filePageView2, string5, joinToString$default, null, null, 25);
            }
            joinToString$default = null;
            addDetail$default(filePageView2, string5, joinToString$default, null, null, 25);
        }
        String string6 = filePageView.getContext().getString(R.string.suggested_edits_image_caption_summary_title_author);
        string6.getClass();
        ExtMetadata extMetadata = pageSummaryForEdit.metadata;
        extMetadata.getClass();
        ExtMetadata.Values values = extMetadata.artist;
        String str6 = values != null ? values.value : null;
        addDetail$default(filePageView, string6, str6 == null ? "" : str6, null, null, 25);
        String string7 = filePageView.getContext().getString(R.string.suggested_edits_image_preview_dialog_date);
        string7.getClass();
        ExtMetadata extMetadata2 = pageSummaryForEdit.metadata;
        extMetadata2.getClass();
        ExtMetadata.Values values2 = extMetadata2.dateTimeOriginal;
        String str7 = values2 != null ? values2.value : null;
        addDetail$default(filePageView, string7, str7 == null ? "" : str7, null, null, 25);
        String string8 = filePageView.getContext().getString(R.string.suggested_edits_image_caption_summary_title_source);
        string8.getClass();
        ExtMetadata extMetadata3 = pageSummaryForEdit.metadata;
        extMetadata3.getClass();
        ExtMetadata.Values values3 = extMetadata3.credit;
        String str8 = values3 != null ? values3.value : null;
        addDetail$default(filePageView, string8, str8 == null ? "" : str8, null, null, 25);
        String string9 = filePageView.getContext().getString(R.string.suggested_edits_image_preview_dialog_licensing);
        string9.getClass();
        ExtMetadata extMetadata4 = pageSummaryForEdit.metadata;
        extMetadata4.getClass();
        String licenseShortName = extMetadata4.licenseShortName();
        ExtMetadata extMetadata5 = pageSummaryForEdit.metadata;
        extMetadata5.getClass();
        ExtMetadata.Values values4 = extMetadata5.licenseUrl;
        String str9 = values4 != null ? values4.value : null;
        addDetail$default(filePageView, string9, licenseShortName, str9 == null ? "" : str9, null, 17);
        if (z) {
            String string10 = filePageView.getContext().getString(R.string.suggested_edits_image_preview_dialog_more_info);
            string10.getClass();
            addDetail$default(filePageView, string10, filePageView.getContext().getString(R.string.suggested_edits_image_preview_dialog_file_page_link_text), filePageView.getContext().getString(R.string.suggested_edits_image_file_page_commons_link, pageSummaryForEdit.title), null, 16);
        } else {
            String string11 = filePageView.getContext().getString(R.string.suggested_edits_image_preview_dialog_more_info);
            string11.getClass();
            addDetail$default(filePageView, string11, filePageView.getContext().getString(R.string.suggested_edits_image_preview_dialog_file_page_wikipedia_link_text), pageTitle.getUri(), null, 16);
        }
        filePageView.requestLayout();
    }

    public final void addActionButton(String str, View.OnClickListener onClickListener) {
        Context context = getContext();
        context.getClass();
        ImageDetailView imageDetailView = new ImageDetailView(context, null);
        imageDetailView.getBinding().titleContainer.setVisibility(8);
        imageDetailView.getBinding().contentContainer.setVisibility(8);
        imageDetailView.getBinding().actionButton.setVisibility(0);
        imageDetailView.getBinding().actionButton.setText(str);
        imageDetailView.getBinding().actionButton.setOnClickListener(onClickListener);
        this.binding.detailsContainer.addView(imageDetailView);
    }

    public final ViewFilePageBinding getBinding() {
        return this.binding;
    }
}
