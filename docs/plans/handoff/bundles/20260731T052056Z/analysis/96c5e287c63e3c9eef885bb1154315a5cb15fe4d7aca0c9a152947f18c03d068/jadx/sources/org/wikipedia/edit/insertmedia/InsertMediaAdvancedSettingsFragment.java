package org.wikipedia.edit.insertmedia;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.room.Room;
import com.google.android.material.chip.Chip$$ExternalSyntheticLambda0;
import com.google.android.material.materialswitch.MaterialSwitch;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InsertMediaAdvancedSettingsFragment extends Fragment {
    public Request.Builder _binding;
    public InsertMediaActivity activity;

    public final InsertMediaViewModel getViewModel$4() {
        return ((InsertMediaActivity) requireActivity()).getViewModel();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.fragment_insert_media_advanced_settings, viewGroup, false);
        int i2 = R.id.imagePosition;
        if (((TextView) Room.findChildViewById(inflate, R.id.imagePosition)) != null) {
            i2 = R.id.imagePositionButton;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.imagePositionButton);
            if (textView != null) {
                i2 = R.id.imageSize;
                if (((TextView) Room.findChildViewById(inflate, R.id.imageSize)) != null) {
                    i2 = R.id.imageSizeButton;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.imageSizeButton);
                    if (textView2 != null) {
                        i2 = R.id.imageType;
                        if (((TextView) Room.findChildViewById(inflate, R.id.imageType)) != null) {
                            i2 = R.id.imageTypeButton;
                            TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.imageTypeButton);
                            if (textView3 != null) {
                                ScrollView scrollView = (ScrollView) inflate;
                                i2 = R.id.wrapImageSwitch;
                                MaterialSwitch materialSwitch = (MaterialSwitch) Room.findChildViewById(inflate, R.id.wrapImageSwitch);
                                if (materialSwitch != null) {
                                    this._binding = new Request.Builder(scrollView, textView, textView2, textView3, materialSwitch);
                                    this.activity = (InsertMediaActivity) requireActivity();
                                    Request.Builder builder = this._binding;
                                    builder.getClass();
                                    ((TextView) builder.method).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0
                                        public final /* synthetic */ InsertMediaAdvancedSettingsFragment f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i3 = i;
                                            InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = this.f$0;
                                            switch (i3) {
                                                case 0:
                                                    FragmentManagerImpl childFragmentManager = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager.getClass();
                                                    Okio__OkioKt.show(childFragmentManager, new InsertMediaImagePositionDialog());
                                                    break;
                                                case 1:
                                                    FragmentManagerImpl childFragmentManager2 = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager2.getClass();
                                                    Okio__OkioKt.show(childFragmentManager2, new InsertMediaImageTypeDialog());
                                                    break;
                                                default:
                                                    FragmentManagerImpl childFragmentManager3 = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager3.getClass();
                                                    Okio__OkioKt.show(childFragmentManager3, new InsertMediaImageSizeDialog());
                                                    break;
                                            }
                                        }
                                    });
                                    Request.Builder builder2 = this._binding;
                                    builder2.getClass();
                                    final int i3 = 1;
                                    ((TextView) builder2.body).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0
                                        public final /* synthetic */ InsertMediaAdvancedSettingsFragment f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i32 = i3;
                                            InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = this.f$0;
                                            switch (i32) {
                                                case 0:
                                                    FragmentManagerImpl childFragmentManager = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager.getClass();
                                                    Okio__OkioKt.show(childFragmentManager, new InsertMediaImagePositionDialog());
                                                    break;
                                                case 1:
                                                    FragmentManagerImpl childFragmentManager2 = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager2.getClass();
                                                    Okio__OkioKt.show(childFragmentManager2, new InsertMediaImageTypeDialog());
                                                    break;
                                                default:
                                                    FragmentManagerImpl childFragmentManager3 = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager3.getClass();
                                                    Okio__OkioKt.show(childFragmentManager3, new InsertMediaImageSizeDialog());
                                                    break;
                                            }
                                        }
                                    });
                                    Request.Builder builder3 = this._binding;
                                    builder3.getClass();
                                    final int i4 = 2;
                                    ((TextView) builder3.headers).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0
                                        public final /* synthetic */ InsertMediaAdvancedSettingsFragment f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i32 = i4;
                                            InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = this.f$0;
                                            switch (i32) {
                                                case 0:
                                                    FragmentManagerImpl childFragmentManager = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager.getClass();
                                                    Okio__OkioKt.show(childFragmentManager, new InsertMediaImagePositionDialog());
                                                    break;
                                                case 1:
                                                    FragmentManagerImpl childFragmentManager2 = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager2.getClass();
                                                    Okio__OkioKt.show(childFragmentManager2, new InsertMediaImageTypeDialog());
                                                    break;
                                                default:
                                                    FragmentManagerImpl childFragmentManager3 = insertMediaAdvancedSettingsFragment.getChildFragmentManager();
                                                    childFragmentManager3.getClass();
                                                    Okio__OkioKt.show(childFragmentManager3, new InsertMediaImageSizeDialog());
                                                    break;
                                            }
                                        }
                                    });
                                    Request.Builder builder4 = this._binding;
                                    builder4.getClass();
                                    ((MaterialSwitch) builder4.tags).setChecked(!Intrinsics.areEqual(getViewModel$4().imagePosition, "img_none"));
                                    Request.Builder builder5 = this._binding;
                                    builder5.getClass();
                                    ((MaterialSwitch) builder5.tags).setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(i3, this));
                                    Request.Builder builder6 = this._binding;
                                    builder6.getClass();
                                    ScrollView scrollView2 = (ScrollView) builder6.url;
                                    scrollView2.getClass();
                                    return scrollView2;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        this.mCalled = true;
    }

    public final void onUpdateImagePosition() {
        int i;
        String str = getViewModel$4().imagePosition;
        int hashCode = str.hashCode();
        if (hashCode == -695000317) {
            if (str.equals("img_left")) {
                i = R.string.insert_media_advanced_settings_image_position_left;
            }
            i = R.string.insert_media_advanced_settings_image_position_none;
        } else if (hashCode != -64512352) {
            if (hashCode == 1862172753 && str.equals("img_center")) {
                i = R.string.insert_media_advanced_settings_image_position_center;
            }
            i = R.string.insert_media_advanced_settings_image_position_none;
        } else {
            if (str.equals("img_right")) {
                i = R.string.insert_media_advanced_settings_image_position_right;
            }
            i = R.string.insert_media_advanced_settings_image_position_none;
        }
        Request.Builder builder = this._binding;
        builder.getClass();
        ((TextView) builder.method).setEnabled(!Intrinsics.areEqual(getViewModel$4().imagePosition, "img_none"));
        Request.Builder builder2 = this._binding;
        builder2.getClass();
        TextView textView = (TextView) builder2.method;
        Context requireContext = requireContext();
        Request.Builder builder3 = this._binding;
        builder3.getClass();
        int i2 = ((TextView) builder3.method).isEnabled() ? R.attr.progressive_color : R.attr.placeholder_color;
        TypedValue typedValue = new TypedValue();
        if (!requireContext.getTheme().resolveAttribute(i2, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i2, "Attribute not found; ID="));
            return;
        }
        textView.setTextColor(typedValue.data);
        Request.Builder builder4 = this._binding;
        builder4.getClass();
        ((TextView) builder4.method).setText(getString(i));
    }

    public final void onUpdateImageSize() {
        int i = Intrinsics.areEqual(getViewModel$4().imageSize, "220x124") ? R.string.insert_media_advanced_settings_image_size_default : R.string.insert_media_advanced_settings_image_size_custom;
        Request.Builder builder = this._binding;
        builder.getClass();
        ((TextView) builder.headers).setText(getString(i));
    }

    public final void onUpdateImageType() {
        int i;
        String str = getViewModel$4().imageType;
        int hashCode = str.hashCode();
        if (hashCode == -902904054) {
            if (str.equals("img_frameless")) {
                i = R.string.insert_media_advanced_settings_image_type_frameless;
            }
            i = R.string.insert_media_advanced_settings_image_type_basic;
        } else if (hashCode != -118207632) {
            if (hashCode == 1959671955 && str.equals("img_framed")) {
                i = R.string.insert_media_advanced_settings_image_type_frame;
            }
            i = R.string.insert_media_advanced_settings_image_type_basic;
        } else {
            if (str.equals("img_thumbnail")) {
                i = R.string.insert_media_advanced_settings_image_type_thumbnail;
            }
            i = R.string.insert_media_advanced_settings_image_type_basic;
        }
        Request.Builder builder = this._binding;
        builder.getClass();
        ((TextView) builder.body).setText(getString(i));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        onUpdateImagePosition();
        onUpdateImageType();
        onUpdateImageSize();
    }
}
