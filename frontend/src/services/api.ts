import axios from 'axios'
import type { Education, Experience, Language, Tool } from '@/types/database'

const api = axios.create({
  baseURL: 'http://localhost:8080/api', // adjust if needed
})

export async function getExperiences(): Promise<Experience[]> {
  const response = await api.get<Experience[]>('/experience')
  return response.data
}

export async function getEducation(): Promise<Education[]> {
    const response = await api.get<Education[]>('/education')
    return response.data
}

export async function getLanguages(): Promise<Language[]> {
    const response = await api.get<Language[]>('/languages')
    return response.data
}

export async function getTools(): Promise<Tool[]> {
    const response = await api.get<Tool[]>('/tools')
    return response.data
}