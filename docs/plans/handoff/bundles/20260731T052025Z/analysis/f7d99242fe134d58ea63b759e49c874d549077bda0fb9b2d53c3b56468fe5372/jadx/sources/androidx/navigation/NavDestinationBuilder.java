package androidx.navigation;

import androidx.navigation.NavArgument;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.serialization.InternalNavType;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NavDestinationBuilder {
    public final LinkedHashMap actions;
    public final LinkedHashMap arguments;
    public final ArrayList deepLinks;
    public final int id;
    public final Navigator navigator;
    public final String route;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(Navigator navigator, ClassReference classReference, Map map) {
        this(navigator, classReference != null ? InternalNavType.generateHashCode(ByteStreamsKt.serializer(classReference)) : -1, classReference != null ? InternalNavType.generateRoutePattern(ByteStreamsKt.serializer(classReference), map, null) : null);
        map.getClass();
        if (classReference != null) {
            KSerializer serializer = ByteStreamsKt.serializer(classReference);
            if (serializer instanceof PolymorphicSerializer) {
                Regex$$ExternalSyntheticBUOutline0.m$3(serializer, ". Arguments can only be generated from concrete classes or objects.", "Cannot generate NavArguments for polymorphic serializer ");
                throw null;
            }
            int elementsCount = serializer.getDescriptor().getElementsCount();
            ArrayList arrayList = new ArrayList(elementsCount);
            for (int i = 0; i < elementsCount; i++) {
                String elementName = serializer.getDescriptor().getElementName(i);
                elementName.getClass();
                NavArgument.Builder builder = new NavArgument.Builder();
                SerialDescriptor elementDescriptor = serializer.getDescriptor().getElementDescriptor(i);
                boolean isNullable = elementDescriptor.isNullable();
                NavType computeNavType = InternalNavType.computeNavType(elementDescriptor, map);
                if (computeNavType == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m(InternalNavType.unknownNavTypeErrorMessage(elementName, elementDescriptor.getSerialName(), serializer.getDescriptor().getSerialName(), map.toString()));
                    throw null;
                }
                builder.type = computeNavType;
                builder.isNullable = isNullable;
                if (serializer.getDescriptor().isElementOptional(i)) {
                    builder.unknownDefaultValuePresent = true;
                }
                arrayList.add(new NamedNavArgument(elementName, builder.build()));
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                NamedNavArgument namedNavArgument = (NamedNavArgument) it.next();
                this.arguments.put(namedNavArgument.name, namedNavArgument.argument);
            }
        }
    }

    public NavDestination build() {
        NavDestination instantiateDestination = instantiateDestination();
        instantiateDestination.label = null;
        NavDestinationImpl navDestinationImpl = instantiateDestination.impl;
        for (Map.Entry entry : this.arguments.entrySet()) {
            String str = (String) entry.getKey();
            NavArgument navArgument = (NavArgument) entry.getValue();
            str.getClass();
            navArgument.getClass();
            navDestinationImpl.getClass();
            ((LinkedHashMap) navDestinationImpl.arguments).put(str, navArgument);
        }
        Iterator it = this.deepLinks.iterator();
        while (it.hasNext()) {
            instantiateDestination.addDeepLink((NavDeepLink) it.next());
        }
        for (Map.Entry entry2 : this.actions.entrySet()) {
            instantiateDestination.putAction(((Number) entry2.getKey()).intValue(), (NavAction) entry2.getValue());
        }
        String str2 = this.route;
        if (str2 != null) {
            instantiateDestination.setRoute(str2);
        }
        int i = this.id;
        if (i != -1) {
            navDestinationImpl.id = i;
            navDestinationImpl.idName = null;
        }
        return instantiateDestination;
    }

    public NavDestination instantiateDestination() {
        return this.navigator.createDestination();
    }

    public NavDestinationBuilder(Navigator navigator, int i, String str) {
        this.navigator = navigator;
        this.id = i;
        this.route = str;
        this.arguments = new LinkedHashMap();
        this.deepLinks = new ArrayList();
        this.actions = new LinkedHashMap();
    }
}
