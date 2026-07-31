package org.wikipedia.settings.homefeed;

import androidx.room.Room;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import org.wikipedia.R;
import org.wikipedia.settings.homefeed.FeedConfigurationState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ModulesViewModel$feedConfigurationState$1 extends SuspendLambda implements Function4 {
    public /* synthetic */ boolean Z$0;
    public /* synthetic */ boolean Z$1;
    public /* synthetic */ boolean Z$2;

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        boolean booleanValue2 = ((Boolean) obj2).booleanValue();
        boolean booleanValue3 = ((Boolean) obj3).booleanValue();
        ModulesViewModel$feedConfigurationState$1 modulesViewModel$feedConfigurationState$1 = new ModulesViewModel$feedConfigurationState$1(4, (Continuation) obj4);
        modulesViewModel$feedConfigurationState$1.Z$0 = booleanValue;
        modulesViewModel$feedConfigurationState$1.Z$1 = booleanValue2;
        modulesViewModel$feedConfigurationState$1.Z$2 = booleanValue3;
        return modulesViewModel$feedConfigurationState$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z = this.Z$0;
        boolean z2 = this.Z$1;
        boolean z3 = this.Z$2;
        ResultKt.throwOnFailure(obj);
        return new FeedConfigurationState.Success(Room.listOf((Object[]) new FeedConfigurationItem[]{new FeedConfigurationItem(R.string.home_feed_settings_feed_configuration_interest_title, (z || z2) ? R.string.home_feed_settings_feed_configuration_interest_subtitle : R.string.home_feed_settings_feed_configuration_empty_interest_subtitle, R.drawable.ic_baseline_tune_24, FeedConfigurationType.INTERESTS), new FeedConfigurationItem(R.string.home_feed_settings_feed_configuration_location_title, R.string.home_feed_settings_feed_configuration_location_subtitle, R.drawable.ic_location_on_24dp, FeedConfigurationType.LOCATION), new FeedConfigurationItem(R.string.home_feed_settings_feed_configuration_reading_history_title, z3 ? R.string.home_feed_settings_feed_configuration_reading_history_subtitle : R.string.home_feed_settings_feed_configuration_empty_reading_history_subtitle, R.drawable.ic_history_24, FeedConfigurationType.READING_HISTORY), new FeedConfigurationItem(R.string.home_feed_settings_feed_configuration_languages_title, R.string.home_feed_settings_feed_configuration_languages_subtitle, R.drawable.ic_translate_white_24dp, FeedConfigurationType.LANGUAGES)}));
    }
}
