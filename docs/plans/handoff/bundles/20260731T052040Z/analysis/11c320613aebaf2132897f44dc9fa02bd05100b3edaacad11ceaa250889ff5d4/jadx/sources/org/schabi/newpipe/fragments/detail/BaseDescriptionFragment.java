package org.schabi.newpipe.fragments.detail;

import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.transition.Transition;
import androidx.work.OperationKt;
import com.google.android.material.chip.ChipGroup;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import j$.util.Collection;
import java.util.Iterator;
import java.util.List;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TokenData;
import org.koin.core.Koin;
import org.schabi.newpipe.BaseFragment;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.local.holder.PlaylistItemHolder$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.util.text.TextLinkifier;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseDescriptionFragment extends BaseFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Koin binding;
    public final CompositeDisposable descriptionDisposables = new CompositeDisposable();

    public final void addImagesMetadataItem(LayoutInflater layoutInflater, LinearLayout linearLayout, int i, List list) {
        String choosePreferredImage = ImageStrategy.choosePreferredImage(list);
        if (choosePreferredImage == null) {
            return;
        }
        Printer inflate = Printer.inflate(layoutInflater, linearLayout);
        NewPipeTextView newPipeTextView = (NewPipeTextView) inflate.accum;
        ((NewPipeTextView) inflate.settings).setText(i);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final Image image = (Image) it.next();
            if (spannableStringBuilder.length() != 0) {
                spannableStringBuilder.append((CharSequence) ", ");
            }
            int length = spannableStringBuilder.length();
            if (image.getHeight() == -1 && image.getWidth() == -1 && image.getEstimatedResolutionLevel() != Image.ResolutionLevel.UNKNOWN) {
                int ordinal = image.getEstimatedResolutionLevel().ordinal();
                if (ordinal == 0) {
                    spannableStringBuilder.append((CharSequence) getString(R.string.image_quality_high));
                } else if (ordinal == 1) {
                    spannableStringBuilder.append((CharSequence) getString(R.string.image_quality_medium));
                } else if (ordinal == 2) {
                    spannableStringBuilder.append((CharSequence) getString(R.string.image_quality_low));
                }
            } else {
                int width = image.getWidth();
                spannableStringBuilder.append((CharSequence) (width < 0 ? getString(R.string.question_mark) : String.valueOf(width)));
                spannableStringBuilder.append('x');
                int height = image.getHeight();
                spannableStringBuilder.append((CharSequence) (height < 0 ? getString(R.string.question_mark) : String.valueOf(height)));
            }
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.schabi.newpipe.fragments.detail.BaseDescriptionFragment.1
                @Override // android.text.style.ClickableSpan
                public final void onClick(View view) {
                    Transition.Impl26.openUrlInBrowser(BaseDescriptionFragment.this.requireContext(), image.getUrl());
                }
            }, length, spannableStringBuilder.length(), 33);
            if (choosePreferredImage.equals(image.getUrl())) {
                spannableStringBuilder.setSpan(new StyleSpan(1), length, spannableStringBuilder.length(), 33);
            }
        }
        newPipeTextView.setText(spannableStringBuilder);
        newPipeTextView.setMovementMethod(LinkMovementMethod.getInstance());
        linearLayout.addView((ConstraintLayout) inflate.root);
    }

    public final void addMetadataItem(LayoutInflater layoutInflater, LinearLayout linearLayout, boolean z, int i, String str) {
        if (Utils.isBlank(str)) {
            return;
        }
        Printer inflate = Printer.inflate(layoutInflater, linearLayout);
        NewPipeTextView newPipeTextView = (NewPipeTextView) inflate.accum;
        NewPipeTextView newPipeTextView2 = (NewPipeTextView) inflate.settings;
        newPipeTextView2.setText(i);
        newPipeTextView2.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, str, 1));
        if (z) {
            Player$$ExternalSyntheticLambda3 player$$ExternalSyntheticLambda3 = TextLinkifier.SET_LINK_MOVEMENT_METHOD;
            newPipeTextView.setAutoLinkMask(1);
            newPipeTextView.setText(str, TextView.BufferType.SPANNABLE);
            TextLinkifier.changeLinkIntents(newPipeTextView, newPipeTextView.getText(), null, null, this.descriptionDisposables, player$$ExternalSyntheticLambda3);
        } else {
            newPipeTextView.setText(str);
        }
        newPipeTextView.setClickable(true);
        linearLayout.addView((ConstraintLayout) inflate.root);
    }

    public final void disableDescriptionSelection() {
        Description description = getDescription();
        if (description != null) {
            TextLinkifier.fromDescription((NewPipeTextView) this.binding.instanceRegistry, description, getService(), getStreamUrl(), this.descriptionDisposables, TextLinkifier.SET_LINK_MOVEMENT_METHOD);
        }
        ((NewPipeTextView) this.binding.scopeRegistry).setVisibility(8);
        ((NewPipeTextView) this.binding.instanceRegistry).setTextIsSelectable(false);
        String string = getString(R.string.description_select_enable);
        ((ImageView) this.binding.extensionManager).setContentDescription(string);
        OperationKt.setTooltipText((ImageView) this.binding.extensionManager, string);
        ((ImageView) this.binding.extensionManager).setImageResource(R.drawable.ic_select_all);
    }

    public abstract Description getDescription();

    public abstract StreamingService getService();

    public abstract int getServiceId();

    public abstract String getStreamUrl();

    public abstract List getTags();

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_description, viewGroup, false);
        int i2 = R.id.barrier;
        if (((Barrier) Options.Companion.findChildViewById(R.id.barrier, inflate)) != null) {
            i2 = R.id.constraint_layout;
            ConstraintLayout constraintLayout = (ConstraintLayout) Options.Companion.findChildViewById(R.id.constraint_layout, inflate);
            if (constraintLayout != null) {
                i2 = R.id.detail_description_note_view;
                NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_description_note_view, inflate);
                if (newPipeTextView != null) {
                    i2 = R.id.detail_description_view;
                    NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_description_view, inflate);
                    if (newPipeTextView2 != null) {
                        i2 = R.id.detail_metadata_layout;
                        LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.detail_metadata_layout, inflate);
                        if (linearLayout != null) {
                            i2 = R.id.detail_select_description_button;
                            ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.detail_select_description_button, inflate);
                            if (imageView != null) {
                                i2 = R.id.detail_upload_date_view;
                                NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_upload_date_view, inflate);
                                if (newPipeTextView3 != null) {
                                    Koin koin = new Koin();
                                    koin.logger = (NestedScrollView) inflate;
                                    koin.resolver = constraintLayout;
                                    koin.scopeRegistry = newPipeTextView;
                                    koin.instanceRegistry = newPipeTextView2;
                                    koin.propertyRegistry = linearLayout;
                                    koin.extensionManager = imageView;
                                    koin.optionRegistry = newPipeTextView3;
                                    this.binding = koin;
                                    Description description = getDescription();
                                    if (description == null || TextUtils.isEmpty(description.getContent()) || description == Description.EMPTY_DESCRIPTION) {
                                        ((NewPipeTextView) this.binding.instanceRegistry).setVisibility(8);
                                        ((ImageView) this.binding.extensionManager).setVisibility(8);
                                    } else {
                                        disableDescriptionSelection();
                                        ((ImageView) this.binding.extensionManager).setOnClickListener(new BaseDescriptionFragment$$ExternalSyntheticLambda0(this, i));
                                    }
                                    setupMetadata(layoutInflater, (LinearLayout) this.binding.propertyRegistry);
                                    LinearLayout linearLayout2 = (LinearLayout) this.binding.propertyRegistry;
                                    List tags = getTags();
                                    if (!tags.isEmpty()) {
                                        View inflate2 = layoutInflater.inflate(R.layout.item_metadata_tags, (ViewGroup) linearLayout2, false);
                                        int i3 = R.id.metadata_tags_chips;
                                        ChipGroup chipGroup = (ChipGroup) Options.Companion.findChildViewById(R.id.metadata_tags_chips, inflate2);
                                        if (chipGroup != null) {
                                            i3 = R.id.metadata_type_view;
                                            if (((TextView) Options.Companion.findChildViewById(R.id.metadata_type_view, inflate2)) != null) {
                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) inflate2;
                                                Collection.EL.stream(tags).sorted(String.CASE_INSENSITIVE_ORDER).forEach(new BaseDescriptionFragment$$ExternalSyntheticLambda1(i, this, layoutInflater, new TokenData(constraintLayout2, chipGroup, 7)));
                                                linearLayout2.addView(constraintLayout2);
                                            }
                                        }
                                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i3)));
                                        return null;
                                    }
                                    return (NestedScrollView) this.binding.logger;
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.descriptionDisposables.clear();
        super.onDestroy();
    }

    public abstract void setupMetadata(LayoutInflater layoutInflater, LinearLayout linearLayout);
}
