package org.wikipedia.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import androidx.viewpager2.widget.ViewPager2;
import coil3.ImageLoader$Builder;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker$DO_NOTHING;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer$Companion;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import okio.ByteString;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityGalleryBinding {
    public final Object captionEditButton;
    public final Object creditText;
    public final Object ctaButton;
    public final Object ctaButtonText;
    public final Object ctaContainer;
    public final Object descriptionContainer;
    public final Object descriptionText;
    public final Object errorView;
    public final Object infoContainer;
    public final Object infoGradient;
    public final Object licenseContainer;
    public final Object licenseIcon;
    public final Object licenseIconBy;
    public final Object licenseIconSa;
    public final Object pager;
    public final Object progressBar;
    public final Object toolbar;
    public final Object toolbarContainer;
    public final Object toolbarGradient;
    public final Object transitionReceiver;

    public ActivityGalleryBinding(LockBasedStorageManager lockBasedStorageManager, ModuleDescriptor moduleDescriptor, ClassDataFinder classDataFinder, AnnotationAndConstantLoader annotationAndConstantLoader, PackageFragmentProviderOptimized packageFragmentProviderOptimized, ErrorReporter errorReporter, FlexibleTypeDeserializer flexibleTypeDeserializer, Iterable iterable, ImageLoader$Builder imageLoader$Builder, AdditionalClassPartsProvider additionalClassPartsProvider, PlatformDependentDeclarationFilter platformDependentDeclarationFilter, ExtensionRegistryLite extensionRegistryLite, NewKotlinTypeChecker newKotlinTypeChecker, ByteString.Companion companion, List list, int i) {
        NewKotlinTypeChecker newKotlinTypeChecker2;
        ProtoEnumFlags protoEnumFlags = ProtoEnumFlags.INSTANCE;
        ProtoEnumFlags protoEnumFlags2 = ProtoEnumFlags.INSTANCE$2;
        if ((i & 65536) != 0) {
            NewKotlinTypeChecker.Companion.getClass();
            newKotlinTypeChecker2 = NewKotlinTypeChecker.Companion.Default;
        } else {
            newKotlinTypeChecker2 = newKotlinTypeChecker;
        }
        AdditionalClassPartsProvider.None none = AdditionalClassPartsProvider.None.INSTANCE$3;
        List listOf = (i & 524288) != 0 ? Room.listOf(DefaultTypeAttributeTranslator.INSTANCE) : list;
        moduleDescriptor.getClass();
        extensionRegistryLite.getClass();
        newKotlinTypeChecker2.getClass();
        this.captionEditButton = lockBasedStorageManager;
        this.licenseIcon = moduleDescriptor;
        this.licenseIconBy = protoEnumFlags;
        this.licenseIconSa = classDataFinder;
        this.transitionReceiver = annotationAndConstantLoader;
        this.creditText = packageFragmentProviderOptimized;
        this.descriptionText = protoEnumFlags2;
        this.ctaButton = errorReporter;
        this.descriptionContainer = LookupTracker$DO_NOTHING.INSTANCE;
        this.infoContainer = flexibleTypeDeserializer;
        this.licenseContainer = iterable;
        this.ctaButtonText = imageLoader$Builder;
        this.ctaContainer = ContractDeserializer$Companion.DEFAULT;
        this.toolbarContainer = additionalClassPartsProvider;
        this.errorView = platformDependentDeclarationFilter;
        this.infoGradient = extensionRegistryLite;
        this.toolbarGradient = newKotlinTypeChecker2;
        this.pager = none;
        this.progressBar = listOf;
        this.toolbar = new ClassDeserializer(this);
    }

    public ActivityGalleryBinding(FrameLayout frameLayout, ImageView imageView, AppTextView appTextView, LinearLayout linearLayout, TextView textView, FrameLayout frameLayout2, LinearLayout linearLayout2, AppTextView appTextView2, WikiErrorView wikiErrorView, LinearLayout linearLayout3, View view, LinearLayout linearLayout4, ImageView imageView2, ImageView imageView3, ImageView imageView4, ViewPager2 viewPager2, LinearProgressIndicator linearProgressIndicator, MaterialToolbar materialToolbar, FrameLayout frameLayout3, View view2, ImageView imageView5) {
        this.captionEditButton = imageView;
        this.creditText = appTextView;
        this.ctaButton = linearLayout;
        this.ctaButtonText = textView;
        this.ctaContainer = frameLayout2;
        this.descriptionContainer = linearLayout2;
        this.descriptionText = appTextView2;
        this.errorView = wikiErrorView;
        this.infoContainer = linearLayout3;
        this.infoGradient = view;
        this.licenseContainer = linearLayout4;
        this.licenseIcon = imageView2;
        this.licenseIconBy = imageView3;
        this.licenseIconSa = imageView4;
        this.pager = viewPager2;
        this.progressBar = linearProgressIndicator;
        this.toolbar = materialToolbar;
        this.toolbarContainer = frameLayout3;
        this.toolbarGradient = view2;
        this.transitionReceiver = imageView5;
    }
}
