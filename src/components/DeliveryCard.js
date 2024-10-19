import React from 'react';
import { View, Text, Button, StyleSheet } from 'react-native';

const DeliveryCard = ({ item, onAccept }) => (
  <View style={styles.card}>
    <Text style={styles.title}>{item.description}</Text>
    <Button title="Accept Delivery" onPress={() => onAccept(item.id)} />
  </View>
);

const styles = StyleSheet.create({
  card: {
    padding: 16,
    marginVertical: 8,
    backgroundColor: '#f0f0f0',
    borderRadius: 8,
  },
  title: {
    fontSize: 18,
    fontWeight: 'bold',
  },
});

export default DeliveryCard;
