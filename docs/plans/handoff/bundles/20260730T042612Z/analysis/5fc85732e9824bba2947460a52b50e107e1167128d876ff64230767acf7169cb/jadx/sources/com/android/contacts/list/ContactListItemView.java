package com.android.contacts.list;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.QuickContactBadge;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.android.contacts.ContactPhotoManager;
import com.android.contacts.ContactPresenceIconUtil;
import com.android.contacts.ContactStatusUtil;
import com.android.contacts.R;
import com.android.contacts.R$styleable;
import com.android.contacts.compat.CompatUtils;
import com.android.contacts.compat.PhoneNumberUtilsCompat;
import com.android.contacts.format.TextHighlighter;
import com.android.contacts.list.MultiSelectEntryContactListAdapter;
import com.android.contacts.list.PhoneNumberListAdapter;
import com.android.contacts.util.ContactDisplayUtils;
import com.android.contacts.util.SearchUtil;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ContactListItemView extends ViewGroup implements AbsListView.SelectionBoundsAdjuster {
    private static final Pattern SPLIT_PATTERN = Pattern.compile("([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+");
    private static final String TAG = "ContactListItemView";
    private Drawable mActivatedBackgroundDrawable;
    private boolean mActivatedStateSupported;
    private boolean mAdjustSelectionBoundsEnabled;
    private int mAvatarOffsetTop;
    private Rect mBoundsWithoutHeader;
    private AppCompatCheckBox mCheckBox;
    private int mCheckBoxHeight;
    private int mCheckBoxWidth;
    private final CharArrayBuffer mDataBuffer;
    private TextView mDataView;
    private int mDataViewHeight;
    private int mDataViewWidthWeight;
    private int mDefaultPhotoViewSize;
    private AppCompatImageButton mDeleteImageButton;
    private int mDeleteImageButtonHeight;
    private int mDeleteImageButtonWidth;
    private int mGapBetweenImageAndText;
    private int mGapBetweenIndexerAndImage;
    private int mGapBetweenLabelAndData;
    private int mGapFromScrollBar;
    private View mHeaderView;
    private int mHeaderWidth;
    private String mHighlightedPrefix;
    private boolean mIsSectionHeaderEnabled;
    private boolean mKeepHorizontalPaddingForPhotoView;
    private boolean mKeepVerticalPaddingForPhotoView;
    private int mLabelAndDataViewMaxHeight;
    private TextView mLabelView;
    private int mLabelViewHeight;
    private int mLabelViewWidthWeight;
    private int mLeftOffset;
    private ArrayList<HighlightSequence> mNameHighlightSequence;
    private TextView mNameTextView;
    private int mNameTextViewHeight;
    private int mNameTextViewTextColor;
    private int mNameTextViewTextSize;
    private ArrayList<HighlightSequence> mNumberHighlightSequence;
    private PhoneNumberListAdapter.Listener mPhoneNumberListAdapterListener;
    private final CharArrayBuffer mPhoneticNameBuffer;
    private TextView mPhoneticNameTextView;
    private int mPhoneticNameTextViewHeight;
    private PhotoPosition mPhotoPosition;
    private ImageView mPhotoView;
    private int mPhotoViewHeight;
    private int mPhotoViewWidth;
    private boolean mPhotoViewWidthAndHeightAreReady;
    private int mPosition;
    private int mPreferredHeight;
    private ImageView mPresenceIcon;
    private int mPresenceIconMargin;
    private int mPresenceIconSize;
    private QuickContactBadge mQuickContact;
    private boolean mQuickContactEnabled;
    private int mRightOffset;
    private ColorStateList mSecondaryTextColor;
    private boolean mShowVideoCallIcon;
    private int mSnippetTextViewHeight;
    private TextView mSnippetView;
    private int mStatusTextViewHeight;
    private TextView mStatusView;
    private boolean mSupportVideoCallIcon;
    private final TextHighlighter mTextHighlighter;
    private int mTextIndent;
    private int mTextOffsetTop;
    private CharSequence mUnknownNameText;
    private ImageView mVideoCallIcon;
    private int mVideoCallIconMargin;
    private int mVideoCallIconSize;
    private ImageView mWorkProfileIcon;

    public enum PhotoPosition {
        LEFT,
        RIGHT
    }

    protected static class HighlightSequence {
        private final int end;
        private final int start;

        HighlightSequence(int i, int i2) {
            this.start = i;
            this.end = i2;
        }
    }

    public static final PhotoPosition getDefaultPhotoPosition(boolean z) {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) != 1 ? z ? PhotoPosition.RIGHT : PhotoPosition.LEFT : z ? PhotoPosition.LEFT : PhotoPosition.RIGHT;
    }

    public ContactListItemView(Context context) {
        super(context);
        this.mPreferredHeight = 0;
        this.mGapBetweenImageAndText = 0;
        this.mGapBetweenIndexerAndImage = 0;
        this.mGapBetweenLabelAndData = 0;
        this.mPresenceIconMargin = 4;
        this.mPresenceIconSize = 16;
        this.mTextIndent = 0;
        this.mVideoCallIconSize = 32;
        this.mVideoCallIconMargin = 16;
        this.mGapFromScrollBar = 20;
        this.mLabelViewWidthWeight = 3;
        this.mDataViewWidthWeight = 5;
        this.mShowVideoCallIcon = false;
        this.mSupportVideoCallIcon = false;
        this.mPhotoPosition = getDefaultPhotoPosition(false);
        this.mQuickContactEnabled = true;
        this.mDefaultPhotoViewSize = 0;
        this.mPhotoViewWidthAndHeightAreReady = false;
        this.mNameTextViewTextColor = -16777216;
        this.mDataBuffer = new CharArrayBuffer(128);
        this.mPhoneticNameBuffer = new CharArrayBuffer(128);
        this.mAdjustSelectionBoundsEnabled = true;
        this.mBoundsWithoutHeader = new Rect();
        this.mTextHighlighter = new TextHighlighter(1);
        this.mNameHighlightSequence = new ArrayList<>();
        this.mNumberHighlightSequence = new ArrayList<>();
    }

    public ContactListItemView(Context context, AttributeSet attributeSet, boolean z) {
        this(context, attributeSet);
        this.mSupportVideoCallIcon = z;
    }

    public ContactListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPreferredHeight = 0;
        this.mGapBetweenImageAndText = 0;
        this.mGapBetweenIndexerAndImage = 0;
        this.mGapBetweenLabelAndData = 0;
        this.mPresenceIconMargin = 4;
        this.mPresenceIconSize = 16;
        this.mTextIndent = 0;
        this.mVideoCallIconSize = 32;
        this.mVideoCallIconMargin = 16;
        this.mGapFromScrollBar = 20;
        this.mLabelViewWidthWeight = 3;
        this.mDataViewWidthWeight = 5;
        this.mShowVideoCallIcon = false;
        this.mSupportVideoCallIcon = false;
        this.mPhotoPosition = getDefaultPhotoPosition(false);
        this.mQuickContactEnabled = true;
        this.mDefaultPhotoViewSize = 0;
        this.mPhotoViewWidthAndHeightAreReady = false;
        this.mNameTextViewTextColor = -16777216;
        this.mDataBuffer = new CharArrayBuffer(128);
        this.mPhoneticNameBuffer = new CharArrayBuffer(128);
        this.mAdjustSelectionBoundsEnabled = true;
        this.mBoundsWithoutHeader = new Rect();
        if (R$styleable.ContactListItemView != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ContactListItemView);
            this.mPreferredHeight = obtainStyledAttributes.getDimensionPixelSize(11, this.mPreferredHeight);
            this.mActivatedBackgroundDrawable = obtainStyledAttributes.getDrawable(0);
            this.mGapBetweenImageAndText = obtainStyledAttributes.getDimensionPixelOffset(4, this.mGapBetweenImageAndText);
            this.mGapBetweenIndexerAndImage = obtainStyledAttributes.getDimensionPixelOffset(5, this.mGapBetweenIndexerAndImage);
            this.mGapBetweenLabelAndData = obtainStyledAttributes.getDimensionPixelOffset(6, this.mGapBetweenLabelAndData);
            this.mPresenceIconMargin = obtainStyledAttributes.getDimensionPixelOffset(21, this.mPresenceIconMargin);
            this.mPresenceIconSize = obtainStyledAttributes.getDimensionPixelOffset(22, this.mPresenceIconSize);
            this.mDefaultPhotoViewSize = obtainStyledAttributes.getDimensionPixelOffset(19, this.mDefaultPhotoViewSize);
            this.mTextIndent = obtainStyledAttributes.getDimensionPixelOffset(24, this.mTextIndent);
            this.mTextOffsetTop = obtainStyledAttributes.getDimensionPixelOffset(25, this.mTextOffsetTop);
            this.mAvatarOffsetTop = obtainStyledAttributes.getDimensionPixelOffset(1, this.mAvatarOffsetTop);
            this.mDataViewWidthWeight = obtainStyledAttributes.getInteger(3, this.mDataViewWidthWeight);
            this.mLabelViewWidthWeight = obtainStyledAttributes.getInteger(12, this.mLabelViewWidthWeight);
            this.mNameTextViewTextColor = obtainStyledAttributes.getColor(13, this.mNameTextViewTextColor);
            this.mNameTextViewTextSize = (int) obtainStyledAttributes.getDimension(14, (int) getResources().getDimension(R.dimen.contact_browser_list_item_text_size));
            this.mVideoCallIconSize = obtainStyledAttributes.getDimensionPixelOffset(27, this.mVideoCallIconSize);
            this.mVideoCallIconMargin = obtainStyledAttributes.getDimensionPixelOffset(26, this.mVideoCallIconMargin);
            setPaddingRelative(obtainStyledAttributes.getDimensionPixelOffset(16, 0), obtainStyledAttributes.getDimensionPixelOffset(18, 0), obtainStyledAttributes.getDimensionPixelOffset(17, 0), obtainStyledAttributes.getDimensionPixelOffset(15, 0));
            obtainStyledAttributes.recycle();
        }
        this.mTextHighlighter = new TextHighlighter(1);
        if (R$styleable.Theme != null) {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(R$styleable.Theme);
            this.mSecondaryTextColor = obtainStyledAttributes2.getColorStateList(0);
            obtainStyledAttributes2.recycle();
        }
        this.mHeaderWidth = getResources().getDimensionPixelSize(R.dimen.contact_list_section_header_width);
        Drawable drawable = this.mActivatedBackgroundDrawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.mNameHighlightSequence = new ArrayList<>();
        this.mNumberHighlightSequence = new ArrayList<>();
        setLayoutDirection(3);
    }

    public void setUnknownNameText(CharSequence charSequence) {
        this.mUnknownNameText = charSequence;
    }

    public void setQuickContactEnabled(boolean z) {
        this.mQuickContactEnabled = z;
    }

    public void setShowVideoCallIcon(boolean z, PhoneNumberListAdapter.Listener listener, int i) {
        this.mShowVideoCallIcon = z;
        this.mPhoneNumberListAdapterListener = listener;
        this.mPosition = i;
        if (z) {
            if (this.mVideoCallIcon == null) {
                ImageView imageView = new ImageView(getContext());
                this.mVideoCallIcon = imageView;
                addView(imageView);
            }
            this.mVideoCallIcon.setContentDescription(getContext().getString(R.string.description_search_video_call));
            this.mVideoCallIcon.setImageResource(R.drawable.quantum_ic_videocam_vd_theme_24);
            this.mVideoCallIcon.setScaleType(ImageView.ScaleType.CENTER);
            this.mVideoCallIcon.setVisibility(0);
            this.mVideoCallIcon.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.ContactListItemView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ContactListItemView.this.mPhoneNumberListAdapterListener != null) {
                        ContactListItemView.this.mPhoneNumberListAdapterListener.onVideoCallIconClicked(ContactListItemView.this.mPosition);
                    }
                }
            });
            return;
        }
        ImageView imageView2 = this.mVideoCallIcon;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
    }

    public void setSupportVideoCallIcon(boolean z) {
        this.mSupportVideoCallIcon = z;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int paddingLeft;
        int i3;
        int i4;
        int i5;
        int resolveSize = ViewGroup.resolveSize(0, i);
        int i6 = this.mPreferredHeight;
        this.mNameTextViewHeight = 0;
        this.mPhoneticNameTextViewHeight = 0;
        this.mLabelViewHeight = 0;
        this.mDataViewHeight = 0;
        this.mLabelAndDataViewMaxHeight = 0;
        this.mSnippetTextViewHeight = 0;
        this.mStatusTextViewHeight = 0;
        this.mCheckBoxWidth = 0;
        this.mCheckBoxHeight = 0;
        this.mDeleteImageButtonWidth = 0;
        this.mDeleteImageButtonHeight = 0;
        ensurePhotoViewSize();
        if (this.mPhotoViewWidth > 0 || this.mKeepHorizontalPaddingForPhotoView) {
            paddingLeft = (resolveSize - getPaddingLeft()) - getPaddingRight();
            i3 = this.mPhotoViewWidth + this.mGapBetweenImageAndText + this.mGapBetweenIndexerAndImage;
        } else {
            paddingLeft = resolveSize - getPaddingLeft();
            i3 = getPaddingRight();
        }
        int i7 = paddingLeft - i3;
        if (this.mIsSectionHeaderEnabled) {
            i7 -= this.mHeaderWidth;
        }
        if (this.mSupportVideoCallIcon) {
            i7 -= this.mVideoCallIconSize + this.mVideoCallIconMargin;
        }
        if (isVisible(this.mCheckBox)) {
            this.mCheckBox.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mCheckBoxWidth = this.mCheckBox.getMeasuredWidth();
            this.mCheckBoxHeight = this.mCheckBox.getMeasuredHeight();
            i7 -= this.mCheckBoxWidth + this.mGapBetweenImageAndText;
        }
        if (isVisible(this.mDeleteImageButton)) {
            this.mDeleteImageButton.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mDeleteImageButtonWidth = this.mDeleteImageButton.getMeasuredWidth();
            this.mDeleteImageButtonHeight = this.mDeleteImageButton.getMeasuredHeight();
            i7 -= this.mDeleteImageButtonWidth + this.mGapBetweenImageAndText;
        }
        if (isVisible(this.mNameTextView)) {
            this.mNameTextView.measure(View.MeasureSpec.makeMeasureSpec(this.mPhotoPosition != PhotoPosition.LEFT ? i7 - this.mTextIndent : i7, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mNameTextViewHeight = this.mNameTextView.getMeasuredHeight();
        }
        if (isVisible(this.mPhoneticNameTextView)) {
            this.mPhoneticNameTextView.measure(View.MeasureSpec.makeMeasureSpec(i7, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mPhoneticNameTextViewHeight = this.mPhoneticNameTextView.getMeasuredHeight();
        }
        if (isVisible(this.mDataView)) {
            if (isVisible(this.mLabelView)) {
                int i8 = i7 - this.mGapBetweenLabelAndData;
                int i9 = this.mDataViewWidthWeight;
                int i10 = this.mLabelViewWidthWeight;
                i5 = (i8 * i9) / (i9 + i10);
                i4 = (i8 * i10) / (i9 + i10);
            } else {
                i5 = i7;
                i4 = 0;
            }
        } else {
            i4 = isVisible(this.mLabelView) ? i7 : 0;
            i5 = 0;
        }
        if (isVisible(this.mDataView)) {
            this.mDataView.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mDataViewHeight = this.mDataView.getMeasuredHeight();
        }
        if (isVisible(this.mLabelView)) {
            this.mLabelView.measure(View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mLabelViewHeight = this.mLabelView.getMeasuredHeight();
        }
        this.mLabelAndDataViewMaxHeight = Math.max(this.mLabelViewHeight, this.mDataViewHeight);
        if (isVisible(this.mSnippetView)) {
            this.mSnippetView.measure(View.MeasureSpec.makeMeasureSpec(i7, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mSnippetTextViewHeight = this.mSnippetView.getMeasuredHeight();
        }
        if (isVisible(this.mPresenceIcon)) {
            this.mPresenceIcon.measure(View.MeasureSpec.makeMeasureSpec(this.mPresenceIconSize, 1073741824), View.MeasureSpec.makeMeasureSpec(this.mPresenceIconSize, 1073741824));
            this.mStatusTextViewHeight = this.mPresenceIcon.getMeasuredHeight();
        }
        if (this.mSupportVideoCallIcon && isVisible(this.mVideoCallIcon)) {
            this.mVideoCallIcon.measure(View.MeasureSpec.makeMeasureSpec(this.mVideoCallIconSize, 1073741824), View.MeasureSpec.makeMeasureSpec(this.mVideoCallIconSize, 1073741824));
        }
        if (isVisible(this.mWorkProfileIcon)) {
            this.mWorkProfileIcon.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mNameTextViewHeight = Math.max(this.mNameTextViewHeight, this.mWorkProfileIcon.getMeasuredHeight());
        }
        if (isVisible(this.mStatusView)) {
            if (isVisible(this.mPresenceIcon)) {
                i7 = (i7 - this.mPresenceIcon.getMeasuredWidth()) - this.mPresenceIconMargin;
            }
            this.mStatusView.measure(View.MeasureSpec.makeMeasureSpec(i7, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.mStatusTextViewHeight = Math.max(this.mStatusTextViewHeight, this.mStatusView.getMeasuredHeight());
        }
        int max = Math.max(Math.max(this.mNameTextViewHeight + this.mPhoneticNameTextViewHeight + this.mLabelAndDataViewMaxHeight + this.mSnippetTextViewHeight + this.mStatusTextViewHeight + getPaddingBottom() + getPaddingTop(), this.mPhotoViewHeight + getPaddingBottom() + getPaddingTop()), i6);
        View view = this.mHeaderView;
        if (view != null && view.getVisibility() == 0) {
            this.mHeaderView.measure(View.MeasureSpec.makeMeasureSpec(this.mHeaderWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        setMeasuredDimension(resolveSize, max);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0279  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r7, int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ContactListItemView.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        if (this.mAdjustSelectionBoundsEnabled) {
            int i = rect.top;
            Rect rect2 = this.mBoundsWithoutHeader;
            int i2 = i + rect2.top;
            rect.top = i2;
            rect.bottom = i2 + rect2.height();
            Rect rect3 = this.mBoundsWithoutHeader;
            rect.left = rect3.left;
            rect.right = rect3.right;
        }
    }

    protected boolean isVisible(View view) {
        return view != null && view.getVisibility() == 0;
    }

    private void ensurePhotoViewSize() {
        if (this.mPhotoViewWidthAndHeightAreReady) {
            return;
        }
        int defaultPhotoViewSize = getDefaultPhotoViewSize();
        this.mPhotoViewHeight = defaultPhotoViewSize;
        this.mPhotoViewWidth = defaultPhotoViewSize;
        if (!this.mQuickContactEnabled && this.mPhotoView == null) {
            if (!this.mKeepHorizontalPaddingForPhotoView) {
                this.mPhotoViewWidth = 0;
            }
            if (!this.mKeepVerticalPaddingForPhotoView) {
                this.mPhotoViewHeight = 0;
            }
        }
        this.mPhotoViewWidthAndHeightAreReady = true;
    }

    protected int getDefaultPhotoViewSize() {
        return this.mDefaultPhotoViewSize;
    }

    private ViewGroup.LayoutParams getDefaultPhotoLayoutParams() {
        ViewGroup.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        int defaultPhotoViewSize = getDefaultPhotoViewSize();
        generateDefaultLayoutParams.width = defaultPhotoViewSize;
        generateDefaultLayoutParams.height = defaultPhotoViewSize;
        return generateDefaultLayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mActivatedStateSupported) {
            this.mActivatedBackgroundDrawable.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mActivatedBackgroundDrawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.mActivatedStateSupported) {
            this.mActivatedBackgroundDrawable.jumpToCurrentState();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.mActivatedStateSupported && isActivated()) {
            this.mActivatedBackgroundDrawable.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    public void setSectionHeader(String str) {
        if (str != null) {
            if (str.isEmpty()) {
                View view = this.mHeaderView;
                if (view == null) {
                    addStarImageHeader();
                    return;
                } else if (view instanceof TextView) {
                    removeView(view);
                    addStarImageHeader();
                    return;
                } else {
                    view.setVisibility(0);
                    return;
                }
            }
            View view2 = this.mHeaderView;
            if (view2 == null) {
                addTextHeader(str);
                return;
            } else if (view2 instanceof ImageView) {
                removeView(view2);
                addTextHeader(str);
                return;
            } else {
                updateHeaderText((TextView) view2, str);
                return;
            }
        }
        View view3 = this.mHeaderView;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    private void addTextHeader(String str) {
        TextView textView = new TextView(getContext());
        this.mHeaderView = textView;
        TextView textView2 = textView;
        textView2.setTextAppearance(getContext(), R.style.SectionHeaderStyle);
        textView2.setGravity(1);
        updateHeaderText(textView2, str);
        addView(textView2);
    }

    private void updateHeaderText(TextView textView, String str) {
        setMarqueeText(textView, str);
        textView.setAllCaps(true);
        if ("…".equals(str)) {
            textView.setContentDescription(getContext().getString(R.string.description_no_name_header));
        } else {
            textView.setContentDescription(str);
        }
        textView.setVisibility(0);
    }

    private void addStarImageHeader() {
        ImageView imageView = new ImageView(getContext());
        this.mHeaderView = imageView;
        ImageView imageView2 = imageView;
        imageView2.setImageDrawable(getResources().getDrawable(R.drawable.quantum_ic_star_vd_theme_24, getContext().getTheme()));
        imageView2.setImageTintList(ColorStateList.valueOf(getResources().getColor(R.color.material_star_pink)));
        imageView2.setContentDescription(getContext().getString(R.string.contactsFavoritesLabel));
        imageView2.setVisibility(0);
        addView(imageView2);
    }

    public void setIsSectionHeaderEnabled(boolean z) {
        this.mIsSectionHeaderEnabled = z;
    }

    public QuickContactBadge getQuickContact() {
        if (!this.mQuickContactEnabled) {
            throw new IllegalStateException("QuickContact is disabled for this view");
        }
        if (this.mQuickContact == null) {
            this.mQuickContact = new QuickContactBadge(getContext());
            if (CompatUtils.isLollipopCompatible()) {
                this.mQuickContact.setOverlay(null);
            }
            this.mQuickContact.setLayoutParams(getDefaultPhotoLayoutParams());
            if (this.mNameTextView != null) {
                this.mQuickContact.setContentDescription(getContext().getString(R.string.description_quick_contact_for, this.mNameTextView.getText()));
            }
            addView(this.mQuickContact);
            this.mPhotoViewWidthAndHeightAreReady = false;
        }
        return this.mQuickContact;
    }

    public ImageView getPhotoView() {
        if (this.mPhotoView == null) {
            ImageView imageView = new ImageView(getContext());
            this.mPhotoView = imageView;
            imageView.setLayoutParams(getDefaultPhotoLayoutParams());
            this.mPhotoView.setBackground(null);
            addView(this.mPhotoView);
            this.mPhotoViewWidthAndHeightAreReady = false;
        }
        return this.mPhotoView;
    }

    public void removePhotoView() {
        removePhotoView(false, true);
    }

    public void removePhotoView(boolean z, boolean z2) {
        this.mPhotoViewWidthAndHeightAreReady = false;
        this.mKeepHorizontalPaddingForPhotoView = z;
        this.mKeepVerticalPaddingForPhotoView = z2;
        ImageView imageView = this.mPhotoView;
        if (imageView != null) {
            removeView(imageView);
            this.mPhotoView = null;
        }
        QuickContactBadge quickContactBadge = this.mQuickContact;
        if (quickContactBadge != null) {
            removeView(quickContactBadge);
            this.mQuickContact = null;
        }
    }

    public void setHighlightedPrefix(String str) {
        this.mHighlightedPrefix = str;
    }

    public void clearHighlightSequences() {
        this.mNameHighlightSequence.clear();
        this.mNumberHighlightSequence.clear();
        this.mHighlightedPrefix = null;
    }

    public void addNameHighlightSequence(int i, int i2) {
        this.mNameHighlightSequence.add(new HighlightSequence(i, i2));
    }

    public void addNumberHighlightSequence(int i, int i2) {
        this.mNumberHighlightSequence.add(new HighlightSequence(i, i2));
    }

    public TextView getNameTextView() {
        if (this.mNameTextView == null) {
            TextView textView = new TextView(getContext());
            this.mNameTextView = textView;
            textView.setSingleLine(true);
            this.mNameTextView.setEllipsize(getTextEllipsis());
            this.mNameTextView.setTextColor(ResourcesCompat.getColorStateList(getResources(), R.color.contact_list_name_text_color, getContext().getTheme()));
            this.mNameTextView.setTextSize(0, this.mNameTextViewTextSize);
            this.mNameTextView.setActivated(isActivated());
            this.mNameTextView.setGravity(16);
            this.mNameTextView.setTextAlignment(5);
            this.mNameTextView.setId(R.id.cliv_name_textview);
            if (CompatUtils.isLollipopCompatible()) {
                this.mNameTextView.setElegantTextHeight(false);
            }
            addView(this.mNameTextView);
        }
        return this.mNameTextView;
    }

    public void setPhoneticName(char[] cArr, int i) {
        if (cArr == null || i == 0) {
            TextView textView = this.mPhoneticNameTextView;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        getPhoneticNameTextView();
        setMarqueeText(this.mPhoneticNameTextView, cArr, i);
        this.mPhoneticNameTextView.setVisibility(0);
    }

    public TextView getPhoneticNameTextView() {
        if (this.mPhoneticNameTextView == null) {
            TextView textView = new TextView(getContext());
            this.mPhoneticNameTextView = textView;
            textView.setSingleLine(true);
            this.mPhoneticNameTextView.setEllipsize(getTextEllipsis());
            this.mPhoneticNameTextView.setTextAppearance(getContext(), android.R.style.TextAppearance.Small);
            this.mPhoneticNameTextView.setTextAlignment(5);
            TextView textView2 = this.mPhoneticNameTextView;
            textView2.setTypeface(textView2.getTypeface(), 1);
            this.mPhoneticNameTextView.setActivated(isActivated());
            this.mPhoneticNameTextView.setId(R.id.cliv_phoneticname_textview);
            addView(this.mPhoneticNameTextView);
        }
        return this.mPhoneticNameTextView;
    }

    public void setLabel(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.mLabelView;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        getLabelView();
        setMarqueeText(this.mLabelView, charSequence);
        this.mLabelView.setVisibility(0);
    }

    public TextView getLabelView() {
        if (this.mLabelView == null) {
            TextView textView = new TextView(getContext());
            this.mLabelView = textView;
            textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            this.mLabelView.setSingleLine(true);
            this.mLabelView.setEllipsize(getTextEllipsis());
            this.mLabelView.setTextAppearance(getContext(), R.style.TextAppearanceSmall);
            if (this.mPhotoPosition == PhotoPosition.LEFT) {
                this.mLabelView.setAllCaps(true);
            } else {
                TextView textView2 = this.mLabelView;
                textView2.setTypeface(textView2.getTypeface(), 1);
            }
            this.mLabelView.setActivated(isActivated());
            this.mLabelView.setId(R.id.cliv_label_textview);
            addView(this.mLabelView);
        }
        return this.mLabelView;
    }

    public void setData(char[] cArr, int i) {
        if (cArr == null || i == 0) {
            TextView textView = this.mDataView;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        getDataView();
        setMarqueeText(this.mDataView, cArr, i);
        this.mDataView.setVisibility(0);
    }

    public void setPhoneNumber(String str, String str2) {
        if (str == null) {
            TextView textView = this.mDataView;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        getDataView();
        SpannableString spannableString = new SpannableString(str);
        if (this.mNumberHighlightSequence.size() != 0) {
            HighlightSequence highlightSequence = this.mNumberHighlightSequence.get(0);
            this.mTextHighlighter.applyMaskingHighlight(spannableString, highlightSequence.start, highlightSequence.end);
        }
        setMarqueeText(this.mDataView, spannableString);
        this.mDataView.setVisibility(0);
        this.mDataView.setTextDirection(3);
        this.mDataView.setTextAlignment(5);
    }

    private void setMarqueeText(TextView textView, char[] cArr, int i) {
        if (getTextEllipsis() == TextUtils.TruncateAt.MARQUEE) {
            setMarqueeText(textView, new String(cArr, 0, i));
        } else {
            textView.setText(cArr, 0, i);
        }
    }

    private void setMarqueeText(TextView textView, CharSequence charSequence) {
        if (getTextEllipsis() == TextUtils.TruncateAt.MARQUEE) {
            SpannableString spannableString = new SpannableString(charSequence);
            spannableString.setSpan(TextUtils.TruncateAt.MARQUEE, 0, spannableString.length(), 33);
            textView.setText(spannableString);
            return;
        }
        textView.setText(charSequence);
    }

    public AppCompatCheckBox getCheckBox() {
        if (this.mCheckBox == null) {
            AppCompatCheckBox appCompatCheckBox = new AppCompatCheckBox(getContext());
            this.mCheckBox = appCompatCheckBox;
            appCompatCheckBox.setFocusable(false);
            addView(this.mCheckBox);
        }
        return this.mCheckBox;
    }

    public AppCompatImageButton getDeleteImageButton(final MultiSelectEntryContactListAdapter.DeleteContactListener deleteContactListener, final int i) {
        if (this.mDeleteImageButton == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext());
            this.mDeleteImageButton = appCompatImageButton;
            appCompatImageButton.setImageResource(R.drawable.quantum_ic_cancel_vd_theme_24);
            this.mDeleteImageButton.setScaleType(ImageView.ScaleType.CENTER);
            this.mDeleteImageButton.setBackgroundColor(0);
            this.mDeleteImageButton.setContentDescription(getResources().getString(R.string.description_delete_contact));
            if (CompatUtils.isLollipopCompatible()) {
                TypedValue typedValue = new TypedValue();
                getContext().getTheme().resolveAttribute(android.R.attr.selectableItemBackgroundBorderless, typedValue, true);
                this.mDeleteImageButton.setBackgroundResource(typedValue.resourceId);
            }
            addView(this.mDeleteImageButton);
        }
        this.mDeleteImageButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.contacts.list.ContactListItemView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MultiSelectEntryContactListAdapter.DeleteContactListener deleteContactListener2 = deleteContactListener;
                if (deleteContactListener2 != null) {
                    deleteContactListener2.onContactDeleteClicked(i);
                }
            }
        });
        return this.mDeleteImageButton;
    }

    public TextView getDataView() {
        if (this.mDataView == null) {
            TextView textView = new TextView(getContext());
            this.mDataView = textView;
            textView.setSingleLine(true);
            this.mDataView.setEllipsize(getTextEllipsis());
            this.mDataView.setTextAppearance(getContext(), R.style.TextAppearanceSmall);
            this.mDataView.setTextAlignment(5);
            this.mDataView.setActivated(isActivated());
            this.mDataView.setId(R.id.cliv_data_view);
            if (CompatUtils.isLollipopCompatible()) {
                this.mDataView.setElegantTextHeight(false);
            }
            addView(this.mDataView);
        }
        return this.mDataView;
    }

    public void setSnippet(String str) {
        if (TextUtils.isEmpty(str)) {
            TextView textView = this.mSnippetView;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        this.mTextHighlighter.setPrefixText(getSnippetView(), str, this.mHighlightedPrefix);
        this.mSnippetView.setVisibility(0);
        if (ContactDisplayUtils.isPossiblePhoneNumber(str)) {
            this.mSnippetView.setContentDescription(PhoneNumberUtilsCompat.createTtsSpannable(str));
        } else {
            this.mSnippetView.setContentDescription(null);
        }
    }

    public TextView getSnippetView() {
        if (this.mSnippetView == null) {
            TextView textView = new TextView(getContext());
            this.mSnippetView = textView;
            textView.setSingleLine(true);
            this.mSnippetView.setEllipsize(getTextEllipsis());
            this.mSnippetView.setTextAppearance(getContext(), android.R.style.TextAppearance.Small);
            this.mSnippetView.setTextAlignment(5);
            this.mSnippetView.setActivated(isActivated());
            addView(this.mSnippetView);
        }
        return this.mSnippetView;
    }

    public TextView getStatusView() {
        if (this.mStatusView == null) {
            TextView textView = new TextView(getContext());
            this.mStatusView = textView;
            textView.setSingleLine(true);
            this.mStatusView.setEllipsize(getTextEllipsis());
            this.mStatusView.setTextAppearance(getContext(), android.R.style.TextAppearance.Small);
            this.mStatusView.setTextColor(this.mSecondaryTextColor);
            this.mStatusView.setActivated(isActivated());
            this.mStatusView.setTextAlignment(5);
            addView(this.mStatusView);
        }
        return this.mStatusView;
    }

    public void setStatus(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.mStatusView;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            }
            return;
        }
        getStatusView();
        setMarqueeText(this.mStatusView, charSequence);
        this.mStatusView.setVisibility(0);
    }

    public void setPresence(Drawable drawable) {
        if (drawable != null) {
            if (this.mPresenceIcon == null) {
                ImageView imageView = new ImageView(getContext());
                this.mPresenceIcon = imageView;
                addView(imageView);
            }
            this.mPresenceIcon.setImageDrawable(drawable);
            this.mPresenceIcon.setScaleType(ImageView.ScaleType.CENTER);
            this.mPresenceIcon.setVisibility(0);
            return;
        }
        ImageView imageView2 = this.mPresenceIcon;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
    }

    public void setWorkProfileIconEnabled(boolean z) {
        ImageView imageView = this.mWorkProfileIcon;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
            return;
        }
        if (z) {
            ImageView imageView2 = new ImageView(getContext());
            this.mWorkProfileIcon = imageView2;
            addView(imageView2);
            this.mWorkProfileIcon.setImageResource(R.drawable.ic_work_profile);
            this.mWorkProfileIcon.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.mWorkProfileIcon.setVisibility(0);
        }
    }

    private TextUtils.TruncateAt getTextEllipsis() {
        return TextUtils.TruncateAt.MARQUEE;
    }

    public void showDisplayName(Cursor cursor, int i, int i2) {
        setDisplayName(cursor.getString(i));
        QuickContactBadge quickContactBadge = this.mQuickContact;
        if (quickContactBadge != null) {
            quickContactBadge.setContentDescription(getContext().getString(R.string.description_quick_contact_for, this.mNameTextView.getText()));
        }
    }

    public void setDisplayName(CharSequence charSequence, boolean z) {
        if (!TextUtils.isEmpty(charSequence) && z) {
            clearHighlightSequences();
            addNameHighlightSequence(0, charSequence.length());
        }
        setDisplayName(charSequence);
    }

    public void setDisplayName(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            String str = this.mHighlightedPrefix;
            if (str != null) {
                charSequence = this.mTextHighlighter.applyPrefixHighlight(charSequence, str);
            } else if (this.mNameHighlightSequence.size() != 0) {
                SpannableString spannableString = new SpannableString(charSequence);
                Iterator<HighlightSequence> it = this.mNameHighlightSequence.iterator();
                while (it.hasNext()) {
                    HighlightSequence next = it.next();
                    this.mTextHighlighter.applyMaskingHighlight(spannableString, next.start, next.end);
                }
                charSequence = spannableString;
            }
        } else {
            charSequence = this.mUnknownNameText;
        }
        setMarqueeText(getNameTextView(), charSequence);
        if (ContactDisplayUtils.isPossiblePhoneNumber(charSequence)) {
            this.mNameTextView.setTextDirection(3);
            this.mNameTextView.setContentDescription(PhoneNumberUtilsCompat.createTtsSpannable(charSequence.toString()));
        } else {
            this.mNameTextView.setContentDescription(charSequence.toString());
        }
    }

    public void hideCheckBox() {
        AppCompatCheckBox appCompatCheckBox = this.mCheckBox;
        if (appCompatCheckBox != null) {
            removeView(appCompatCheckBox);
            this.mCheckBox = null;
        }
    }

    public void hideDeleteImageButton() {
        AppCompatImageButton appCompatImageButton = this.mDeleteImageButton;
        if (appCompatImageButton != null) {
            removeView(appCompatImageButton);
            this.mDeleteImageButton = null;
        }
    }

    public void hideDisplayName() {
        TextView textView = this.mNameTextView;
        if (textView != null) {
            removeView(textView);
            this.mNameTextView = null;
        }
    }

    public void showPhoneticName(Cursor cursor, int i) {
        cursor.copyStringToBuffer(i, this.mPhoneticNameBuffer);
        CharArrayBuffer charArrayBuffer = this.mPhoneticNameBuffer;
        int i2 = charArrayBuffer.sizeCopied;
        if (i2 != 0) {
            setPhoneticName(charArrayBuffer.data, i2);
        } else {
            setPhoneticName(null, 0);
        }
    }

    public void hidePhoneticName() {
        TextView textView = this.mPhoneticNameTextView;
        if (textView != null) {
            removeView(textView);
            this.mPhoneticNameTextView = null;
        }
    }

    public void showPresenceAndStatusMessage(Cursor cursor, int i, int i2) {
        int i3;
        Drawable drawable;
        String str = null;
        if (cursor.isNull(i)) {
            i3 = 0;
            drawable = null;
        } else {
            i3 = cursor.getInt(i);
            drawable = ContactPresenceIconUtil.getPresenceIcon(getContext(), i3);
        }
        setPresence(drawable);
        if (i2 != 0 && !cursor.isNull(i2)) {
            str = cursor.getString(i2);
        }
        if (str == null && i3 != 0) {
            str = ContactStatusUtil.getStatusString(getContext(), i3);
        }
        setStatus(str);
    }

    public void showSnippet(Cursor cursor, String str, int i) {
        String string = cursor.getString(i);
        if (string == null) {
            setSnippet(null);
            return;
        }
        String string2 = cursor.getColumnIndex("display_name") >= 0 ? cursor.getString(cursor.getColumnIndex("display_name")) : null;
        if (string.equals(string2)) {
            setSnippet(null);
        } else {
            setSnippet(updateSnippet(string, str, string2));
        }
    }

    public void showSnippet(Cursor cursor, int i) {
        int indexOf;
        if (cursor.getColumnCount() <= i || !"snippet".equals(cursor.getColumnName(i))) {
            setSnippet(null);
            return;
        }
        String string = cursor.getString(i);
        Bundle extras = cursor.getExtras();
        if (extras.getBoolean("deferred_snippeting")) {
            String string2 = extras.getString("deferred_snippeting_query");
            int columnIndex = cursor.getColumnIndex("display_name");
            r1 = updateSnippet(string, string2, columnIndex >= 0 ? cursor.getString(columnIndex) : null);
        } else if (string != null) {
            int length = string.length();
            int indexOf2 = string.indexOf(91);
            if (indexOf2 != -1) {
                int lastIndexOf = string.lastIndexOf(10, indexOf2);
                int lastIndexOf2 = string.lastIndexOf(93);
                if (lastIndexOf2 != -1 && (indexOf = string.indexOf(10, lastIndexOf2)) != -1) {
                    length = indexOf;
                }
                StringBuilder sb = new StringBuilder();
                for (int i2 = lastIndexOf != -1 ? lastIndexOf + 1 : 0; i2 < length; i2++) {
                    char charAt = string.charAt(i2);
                    if (charAt != '[' && charAt != ']') {
                        sb.append(charAt);
                    }
                }
                r1 = sb.toString();
            }
        } else {
            r1 = string;
        }
        setSnippet(r1);
    }

    private String updateSnippet(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String cleanStartAndEndOfSearchQuery = SearchUtil.cleanStartAndEndOfSearchQuery(str2.toLowerCase());
            if (!TextUtils.isEmpty(str3)) {
                Iterator<String> it = split(str3.toLowerCase()).iterator();
                while (it.hasNext()) {
                    if (it.next().startsWith(cleanStartAndEndOfSearchQuery)) {
                        return null;
                    }
                }
            }
            SearchUtil.MatchedLine findMatchingLine = SearchUtil.findMatchingLine(str, cleanStartAndEndOfSearchQuery);
            if (findMatchingLine != null && findMatchingLine.line != null) {
                int integer = getResources().getInteger(R.integer.snippet_length_before_tokenize);
                if (findMatchingLine.line.length() > integer) {
                    return snippetize(findMatchingLine.line, findMatchingLine.startIndex, integer);
                }
                return findMatchingLine.line;
            }
        }
        return null;
    }

    private String snippetize(String str, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        while (true) {
            if (i3 >= str.length()) {
                i3 = i;
                break;
            }
            if (!Character.isLetterOrDigit(str.charAt(i3))) {
                i2 = i4;
                break;
            }
            i4--;
            i3++;
        }
        int i5 = i2;
        for (int i6 = i - 1; i6 > -1 && i2 > 0; i6--) {
            if (!Character.isLetterOrDigit(str.charAt(i6))) {
                i5 = i2;
                i = i6;
            }
            i2--;
        }
        int i7 = i3;
        while (i3 < str.length() && i5 > 0) {
            if (!Character.isLetterOrDigit(str.charAt(i3))) {
                i7 = i3;
            }
            i5--;
            i3++;
        }
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            sb.append("...");
        }
        sb.append(str.substring(i, i7));
        if (i7 < str.length()) {
            sb.append("...");
        }
        return sb.toString();
    }

    private static List<String> split(String str) {
        Matcher matcher = SPLIT_PATTERN.matcher(str);
        ArrayList newArrayList = Lists.newArrayList();
        while (matcher.find()) {
            newArrayList.add(matcher.group());
        }
        return newArrayList;
    }

    public void showData(Cursor cursor, int i) {
        cursor.copyStringToBuffer(i, this.mDataBuffer);
        CharArrayBuffer charArrayBuffer = this.mDataBuffer;
        setData(charArrayBuffer.data, charArrayBuffer.sizeCopied);
    }

    public void setActivatedStateSupported(boolean z) {
        this.mActivatedStateSupported = z;
    }

    public void setAdjustSelectionBoundsEnabled(boolean z) {
        this.mAdjustSelectionBoundsEnabled = z;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        forceLayout();
    }

    public void setPhotoPosition(PhotoPosition photoPosition) {
        this.mPhotoPosition = photoPosition;
    }

    public PhotoPosition getPhotoPosition() {
        return this.mPhotoPosition;
    }

    public void setDrawableResource(int i) {
        ImageView photoView = getPhotoView();
        photoView.setScaleType(ImageView.ScaleType.CENTER);
        Drawable drawable = ContextCompat.getDrawable(getContext(), i);
        int color = ContextCompat.getColor(getContext(), R.color.search_shortcut_icon_color);
        if (CompatUtils.isLollipopCompatible()) {
            photoView.setImageDrawable(drawable);
            photoView.setImageTintList(ColorStateList.valueOf(color));
        } else {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTint(mutate, color);
            photoView.setImageDrawable(mutate);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.mBoundsWithoutHeader.contains((int) x, (int) y) || !pointIsInView(x, y)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    private final boolean pointIsInView(float f, float f2) {
        return f >= ((float) this.mLeftOffset) && f < ((float) this.mRightOffset) && f2 >= ContactPhotoManager.OFFSET_DEFAULT && f2 < ((float) (getBottom() - getTop()));
    }
}
