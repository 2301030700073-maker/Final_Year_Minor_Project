package org.wikipedia.databinding;

import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.drawerlayout.widget.FixedDrawerLayout;
import androidx.fragment.app.FragmentContainerView;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textview.MaterialTextView;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactoryImpl;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.CompositeSyntheticJavaPartsProvider;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import okhttp3.ConnectionPool;
import okio.ByteString;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.talk.TalkThreadItemView;
import org.wikipedia.views.FrameLayoutNavMenuTriggerer;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.PageScrollerView;
import org.wikipedia.views.SwipeableListView;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.views.WikiArticleCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityPageBinding {
    public final Object containerWithNavTrigger;
    public final Object navigationDrawer;
    public final Object pageFragment;
    public final Object pageProgressBar;
    public final Object pageScrollerButton;
    public final Object pageToolbar;
    public final Object pageToolbarButtonNotifications;
    public final Object pageToolbarButtonSearch;
    public final Object pageToolbarButtonShowOverflowMenu;
    public final Object pageToolbarButtonTabs;
    public final Object pageToolbarContainer;
    public final Object rootView;
    public final Object sidePanelContainer;
    public final Object tocList;
    public final Object wikiArticleCardView;

    public ActivityPageBinding(LockBasedStorageManager lockBasedStorageManager, ReflectJavaClassFinder reflectJavaClassFinder, ReflectJavaClassFinder reflectJavaClassFinder2, DeserializedDescriptorResolver deserializedDescriptorResolver, ByteString.Companion companion, ConnectionPool connectionPool, JvmTypeFactoryImpl jvmTypeFactoryImpl, ModuleDescriptorImpl moduleDescriptorImpl, ReflectionTypes reflectionTypes, AnnotationTypeQualifierResolver annotationTypeQualifierResolver, JavaTypeEnhancement javaTypeEnhancement, NewKotlinTypeChecker newKotlinTypeChecker, JavaTypeEnhancementState javaTypeEnhancementState, JvmTypeFactoryImpl jvmTypeFactoryImpl2) {
        SyntheticJavaPartsProvider.Companion.getClass();
        newKotlinTypeChecker.getClass();
        javaTypeEnhancementState.getClass();
        CompositeSyntheticJavaPartsProvider compositeSyntheticJavaPartsProvider = SyntheticJavaPartsProvider.Companion.EMPTY;
        compositeSyntheticJavaPartsProvider.getClass();
        this.rootView = lockBasedStorageManager;
        this.navigationDrawer = reflectJavaClassFinder;
        this.containerWithNavTrigger = reflectJavaClassFinder2;
        this.pageFragment = deserializedDescriptorResolver;
        this.pageProgressBar = companion;
        this.pageScrollerButton = connectionPool;
        this.pageToolbar = jvmTypeFactoryImpl;
        this.pageToolbarButtonNotifications = moduleDescriptorImpl;
        this.pageToolbarButtonSearch = reflectionTypes;
        this.pageToolbarButtonShowOverflowMenu = annotationTypeQualifierResolver;
        this.pageToolbarButtonTabs = javaTypeEnhancement;
        this.pageToolbarContainer = newKotlinTypeChecker;
        this.sidePanelContainer = javaTypeEnhancementState;
        this.tocList = jvmTypeFactoryImpl2;
        this.wikiArticleCardView = compositeSyntheticJavaPartsProvider;
    }

    public ActivityPageBinding(TalkThreadItemView talkThreadItemView, TextView textView, ImageView imageView, ImageView imageView2, MaterialButton materialButton, ImageView imageView3, LinearLayout linearLayout, View view, TextView textView2, View view2, View view3, View view4, TextView textView3, View view5, View view6, TextView textView4) {
        this.rootView = textView;
        this.pageToolbarButtonShowOverflowMenu = imageView;
        this.navigationDrawer = imageView2;
        this.containerWithNavTrigger = materialButton;
        this.pageFragment = imageView3;
        this.pageProgressBar = linearLayout;
        this.pageScrollerButton = view;
        this.pageToolbar = textView2;
        this.pageToolbarButtonNotifications = view2;
        this.pageToolbarButtonSearch = view3;
        this.pageToolbarButtonTabs = view4;
        this.pageToolbarContainer = textView3;
        this.sidePanelContainer = view5;
        this.tocList = view6;
        this.wikiArticleCardView = textView4;
    }

    public ActivityPageBinding(FixedDrawerLayout fixedDrawerLayout, FrameLayoutNavMenuTriggerer frameLayoutNavMenuTriggerer, FixedDrawerLayout fixedDrawerLayout2, FragmentContainerView fragmentContainerView, LinearProgressIndicator linearProgressIndicator, PageScrollerView pageScrollerView, MaterialToolbar materialToolbar, NotificationButtonView notificationButtonView, MaterialTextView materialTextView, ImageView imageView, TabCountsView tabCountsView, FrameLayout frameLayout, FrameLayout frameLayout2, SwipeableListView swipeableListView, WikiArticleCardView wikiArticleCardView) {
        this.rootView = fixedDrawerLayout;
        this.containerWithNavTrigger = frameLayoutNavMenuTriggerer;
        this.navigationDrawer = fixedDrawerLayout2;
        this.pageFragment = fragmentContainerView;
        this.pageProgressBar = linearProgressIndicator;
        this.pageScrollerButton = pageScrollerView;
        this.pageToolbar = materialToolbar;
        this.pageToolbarButtonNotifications = notificationButtonView;
        this.pageToolbarButtonSearch = materialTextView;
        this.pageToolbarButtonShowOverflowMenu = imageView;
        this.pageToolbarButtonTabs = tabCountsView;
        this.pageToolbarContainer = frameLayout;
        this.sidePanelContainer = frameLayout2;
        this.tocList = swipeableListView;
        this.wikiArticleCardView = wikiArticleCardView;
    }

    public ActivityPageBinding(ReadingListItemView readingListItemView, ShapeableImageView shapeableImageView, TextView textView, ShapeableImageView shapeableImageView2, ShapeableImageView shapeableImageView3, ShapeableImageView shapeableImageView4, ShapeableImageView shapeableImageView5, ImageView imageView, ImageView imageView2, MaterialButton materialButton, TextView textView2, FlexboxLayout flexboxLayout, TextView textView3, TextView textView4, ImageView imageView3, CheckBox checkBox, ImageView imageView4, TextView textView5, TextView textView6) {
        this.rootView = shapeableImageView;
        this.navigationDrawer = textView;
        this.containerWithNavTrigger = shapeableImageView2;
        this.pageToolbarButtonShowOverflowMenu = imageView;
        this.pageFragment = imageView2;
        this.pageProgressBar = materialButton;
        this.pageScrollerButton = textView2;
        this.pageToolbar = flexboxLayout;
        this.pageToolbarButtonNotifications = textView3;
        this.pageToolbarButtonSearch = textView4;
        this.pageToolbarButtonTabs = imageView3;
        this.pageToolbarContainer = checkBox;
        this.sidePanelContainer = imageView4;
        this.tocList = textView5;
        this.wikiArticleCardView = textView6;
    }
}
