package org.wikipedia.views;

import android.content.Context;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.imageview.ShapeableImageView;
import java.util.List;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.PageItemView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageItemView extends FrameLayout {
    public final ActivityLoginBinding binding;
    public Callback callback;
    public String imageUrl;
    public Object item;
    public boolean selected;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onActionClick(View view, Object obj);

        void onClick(Object obj);

        void onListChipClick(ReadingList readingList);

        boolean onLongClick(Object obj);
    }

    public PageItemView(Context context) {
        super(context);
        final int i = 0;
        View inflate = LayoutInflater.from(context).inflate(R.layout.item_page_list_entry, (ViewGroup) this, false);
        addView(inflate);
        int i2 = R.id.chips_scrollview;
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) Room.findChildViewById(inflate, R.id.chips_scrollview);
        if (horizontalScrollView != null) {
            i2 = R.id.page_list_item_action;
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.page_list_item_action);
            if (imageView != null) {
                i2 = R.id.page_list_item_action_container;
                FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.page_list_item_action_container);
                if (frameLayout != null) {
                    i2 = R.id.page_list_item_circular_progress_bar;
                    CircularProgressBar circularProgressBar = (CircularProgressBar) Room.findChildViewById(inflate, R.id.page_list_item_circular_progress_bar);
                    if (circularProgressBar != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                        i2 = R.id.page_list_item_description;
                        GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.page_list_item_description);
                        if (goneIfEmptyTextView != null) {
                            i2 = R.id.page_list_item_image;
                            ShapeableImageView shapeableImageView = (ShapeableImageView) Room.findChildViewById(inflate, R.id.page_list_item_image);
                            if (shapeableImageView != null) {
                                i2 = R.id.page_list_item_image_container;
                                FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.page_list_item_image_container);
                                if (frameLayout2 != null) {
                                    i2 = R.id.page_list_item_selected_image;
                                    ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.page_list_item_selected_image);
                                    if (imageView2 != null) {
                                        i2 = R.id.page_list_item_title;
                                        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.page_list_item_title);
                                        if (textView != null) {
                                            i2 = R.id.reading_lists_chip_group;
                                            ChipGroup chipGroup = (ChipGroup) Room.findChildViewById(inflate, R.id.reading_lists_chip_group);
                                            if (chipGroup != null) {
                                                this.binding = new ActivityLoginBinding(horizontalScrollView, imageView, frameLayout, circularProgressBar, constraintLayout, goneIfEmptyTextView, shapeableImageView, frameLayout2, imageView2, textView, chipGroup);
                                                setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                                TypedValue typedValue = new TypedValue();
                                                final int i3 = 1;
                                                typedValue = context.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true) ? typedValue : null;
                                                if (typedValue == null) {
                                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                                                    throw null;
                                                }
                                                setBackgroundColor(typedValue.data);
                                                setFocusable(true);
                                                setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.views.PageItemView$$ExternalSyntheticLambda0
                                                    public final /* synthetic */ PageItemView f$0;

                                                    {
                                                        this.f$0 = this;
                                                    }

                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view) {
                                                        int i4 = i;
                                                        PageItemView pageItemView = this.f$0;
                                                        switch (i4) {
                                                            case 0:
                                                                PageItemView.Callback callback = pageItemView.callback;
                                                                if (callback != null) {
                                                                    callback.onClick(pageItemView.item);
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                PageItemView.Callback callback2 = pageItemView.callback;
                                                                if (callback2 != null) {
                                                                    callback2.onActionClick(pageItemView, pageItemView.item);
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(i, this));
                                                imageView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.views.PageItemView$$ExternalSyntheticLambda0
                                                    public final /* synthetic */ PageItemView f$0;

                                                    {
                                                        this.f$0 = this;
                                                    }

                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view) {
                                                        int i4 = i3;
                                                        PageItemView pageItemView = this.f$0;
                                                        switch (i4) {
                                                            case 0:
                                                                PageItemView.Callback callback = pageItemView.callback;
                                                                if (callback != null) {
                                                                    callback.onClick(pageItemView.item);
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                PageItemView.Callback callback2 = pageItemView.callback;
                                                                if (callback2 != null) {
                                                                    callback2.onActionClick(pageItemView, pageItemView.item);
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                    }
                                                });
                                                new View[]{this}[0].setOnContextClickListener(new DeviceUtil$$ExternalSyntheticLambda0());
                                                View view = new View[]{imageView}[0];
                                                RegexKt.setTooltipText(view, view.getContentDescription());
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final Object getItem() {
        return this.item;
    }

    public final void setActionHint(int i) {
        ((ImageView) this.binding.footerContainer).setContentDescription(getContext().getString(i));
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setCircularProgressVisibility(boolean z) {
        ((CircularProgressBar) this.binding.loginPasswordInput).setVisibility(z ? 0 : 8);
    }

    public final void setDescription(CharSequence charSequence) {
        ((GoneIfEmptyTextView) this.binding.loginButton).setText(charSequence);
    }

    public final void setDescriptionMaxLines(int i) {
        ((GoneIfEmptyTextView) this.binding.loginButton).setMaxLines(i);
    }

    public final void setImageUrl(String str) {
        this.imageUrl = str;
        updateSelectedState();
    }

    public final void setImageVisible(boolean z) {
        ((FrameLayout) this.binding.loginPrimaryContainer).setVisibility(z ? 0 : 8);
    }

    public final void setItem(Object obj) {
        this.item = obj;
    }

    public final void setProgress(int i) {
        ((CircularProgressBar) this.binding.loginPasswordInput).setCurrentProgress(i);
    }

    public final void setSearchQuery(String str) {
        StringUtil stringUtil = StringUtil.INSTANCE;
        TextView textView = (TextView) this.binding.viewLoginError;
        StringUtil.boldenKeywordText(textView, textView.getText().toString(), str);
    }

    public final void setSecondaryActionIcon(int i, boolean z) {
        ActivityLoginBinding activityLoginBinding = this.binding;
        ((ImageView) activityLoginBinding.footerContainer).setImageResource(i);
        ((ImageView) activityLoginBinding.footerContainer).setVisibility(z ? 0 : 8);
        ((FrameLayout) activityLoginBinding.login2faText).setVisibility(z ? 0 : 8);
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        if (this.selected != z) {
            this.selected = z;
            updateSelectedState();
        }
    }

    public final void setTitle(String str) {
        TextView textView = (TextView) this.binding.viewLoginError;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(str));
    }

    public final void setTitleMaxLines(int i) {
        ((TextView) this.binding.viewLoginError).setMaxLines(i);
    }

    public final void setTitleTypeface(int i) {
        ((TextView) this.binding.viewLoginError).setTypeface(Typeface.SANS_SERIF, i);
    }

    public final void setUpChipGroup(List<ReadingList> list) {
        list.getClass();
        ActivityLoginBinding activityLoginBinding = this.binding;
        int i = 0;
        ((HorizontalScrollView) activityLoginBinding.captchaContainer).setVisibility(0);
        ((HorizontalScrollView) activityLoginBinding.captchaContainer).setFadingEdgeLength(0);
        ChipGroup chipGroup = (ChipGroup) activityLoginBinding.viewProgressBar;
        chipGroup.removeAllViews();
        for (ReadingList readingList : list) {
            Chip chip = new Chip(chipGroup.getContext(), null);
            chip.setTextAppearance(R.style.Chip_Accessible);
            chip.setText(readingList.getTitle());
            chip.setClickable(true);
            Context context = getContext();
            context.getClass();
            TypedValue typedValue = new TypedValue();
            TypedValue typedValue2 = context.getTheme().resolveAttribute(R.attr.border_color, typedValue, true) ? typedValue : null;
            if (typedValue2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968724");
                return;
            } else {
                chip.setChipBackgroundColorResource(typedValue2.resourceId);
                chip.setOnClickListener(new PageItemView$$ExternalSyntheticLambda3(i, this, readingList));
                chipGroup.addView(chip);
            }
        }
    }

    public final void setViewsGreyedOut(boolean z) {
        float f = z ? 0.5f : 1.0f;
        ActivityLoginBinding activityLoginBinding = this.binding;
        ((TextView) activityLoginBinding.viewLoginError).setAlpha(f);
        ((GoneIfEmptyTextView) activityLoginBinding.loginButton).setAlpha(f);
        ((ShapeableImageView) activityLoginBinding.loginCreateAccountButton).setAlpha(f);
    }

    public final void setViewsRead(boolean z) {
        int i = z ? R.attr.background_color : R.attr.paper_color;
        ActivityLoginBinding activityLoginBinding = this.binding;
        ((TextView) activityLoginBinding.viewLoginError).setTypeface(Typeface.SANS_SERIF, !z ? 1 : 0);
        ConstraintLayout constraintLayout = (ConstraintLayout) activityLoginBinding.loginUsernameText;
        Context context = getContext();
        TypedValue m = ViewSizeResolver$CC.m(context);
        if (!context.getTheme().resolveAttribute(i, m, true)) {
            m = null;
        }
        if (m != null) {
            constraintLayout.setBackgroundColor(m.data);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
        }
    }

    public final void updateSelectedState() {
        TypedValue typedValue;
        boolean z = this.selected;
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (z) {
            ((ImageView) activityLoginBinding.toolbar).setVisibility(0);
            ((ShapeableImageView) activityLoginBinding.loginCreateAccountButton).setVisibility(8);
            ConstraintLayout constraintLayout = (ConstraintLayout) activityLoginBinding.loginUsernameText;
            Context context = getContext();
            TypedValue m = ViewSizeResolver$CC.m(context);
            typedValue = context.getTheme().resolveAttribute(R.attr.background_color, m, true) ? m : null;
            if (typedValue != null) {
                constraintLayout.setBackgroundColor(typedValue.data);
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                return;
            }
        }
        String str = this.imageUrl;
        if (str == null || str.length() == 0) {
            ((ShapeableImageView) activityLoginBinding.loginCreateAccountButton).setVisibility(8);
        } else {
            ShapeableImageView shapeableImageView = (ShapeableImageView) activityLoginBinding.loginCreateAccountButton;
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) activityLoginBinding.loginCreateAccountButton;
            shapeableImageView.setVisibility(0);
            shapeableImageView2.setContentDescription(getContext().getString(R.string.image_content_description, ((TextView) activityLoginBinding.viewLoginError).getText()));
            ViewUtil.loadImage$default(shapeableImageView2, this.imageUrl, null, 28);
        }
        ((ImageView) activityLoginBinding.toolbar).setVisibility(8);
        ConstraintLayout constraintLayout2 = (ConstraintLayout) activityLoginBinding.loginUsernameText;
        Context context2 = getContext();
        TypedValue m2 = ViewSizeResolver$CC.m(context2);
        typedValue = context2.getTheme().resolveAttribute(android.R.attr.selectableItemBackground, m2, true) ? m2 : null;
        if (typedValue != null) {
            constraintLayout2.setBackgroundResource(typedValue.resourceId);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=16843534");
        }
    }
}
